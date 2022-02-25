#!/bin/bash
readme=./README.md

echo '# LeetCode' > $readme
echo 'This repository has solutions to several problems of LeetCode.' >> $readme
echo 'Table of contents' >> $readme


for file in ./Easy ./Medium ./Hard
do
    file_count=`find ${file} -maxdepth 1 -type f | wc -l`
    cat=${file#"./"}
    lowercase=`echo $cat | tr '[A-Z]' '[a-z]' | tr '[ ]' '[_]'`
    echo "- [$cat](#gear-${lowercase}-${file_count})" >> $readme
done

for file in ./Easy/* ./Medium/* ./Hard/*
do
    # fetching extesion & file name from path
    file_name="$(basename $file)"
    extension="${file_name##*.}"
    name="${file_name%.*}"

    # fetching question number from path
    ques_no=${name%%_*}

    # fetching question from path
    ques=${name#"$ques_no""_"}
    ques=`echo $ques | sed 's/\([A-Z]\{1,\}\)/ \U\1/g;s/^_//' | xargs`
    # echo $ques

    # fetching category number from path
    cat="${file%"/${file_name}"}" # removing file_name(suffix)
    cat=${cat#"./"} # removing ./(prefix)

    # getting language name
    if [ "$extension" = "rb" ]; then
        lang="Ruby"
    elif [ "$extension" = "py" ]; then
        lang="Python"
    elif [ "$extension" = "php" ]; then
        lang="PHP"
    else
        lang=''
    fi

    # update prev_cat with new if both are different
    if [ "$prev_cat" != $cat ]; then
        # unset prev_cat
        prev_cat=''
    fi

    # empty
    if [ "$prev_cat" = '' ]; then
        file_count=`find ./${cat}/ -maxdepth 1 -type f | wc -l`
        echo "## :gear: ${cat} ($file_count)" >> $readme
    fi

    # updating the readme only if it's a file
    if [ "$lang" != '' ]; then
        echo ":point_right: ${ques_no}. ${ques} [${lang}]\n\r" >> $readme
        prev_cat=$cat
    fi

    # lowercase=`echo $file | tr '[A-Z]' '[a-z]' | tr '[ ]' '[_]'`
    # lowercase=$(echo "$lowercase" | sed 's/-/_/g')
    # lowercase=$(echo "$lowercase" | sed 's/#//g')
    # lowercase=$(echo "$lowercase" | sed 's/!//g')
    # lowercase=$(echo "$lowercase" | sed "s/,//g")
    # lowercase=$(echo "$lowercase" | sed 's/(/_/g')
    # lowercase=$(echo "$lowercase" | sed 's/)/_/g')
    # lowercase=$(echo "$lowercase" | sed "s/'//g")
    # lowercase=$(echo "$lowercase" | sed "s/__/_/g")
    # echo "$lowercase"

    # mv "$file" "$lowercase"
    # for f in *.mp3
    # do
    #     sed -i "s/$file/$lowercase/g" "$f"
    # done
done

echo 'ReadMe file updated successfully!'