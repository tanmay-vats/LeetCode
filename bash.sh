#!/bin/bash
readme=./README.md

echo '# LeetCode' > $readme
echo 'This repository has solutions to several problems of LeetCode.' >> $readme
echo 'Table of contents' >> $readme


for dir in ./Easy ./Medium ./Hard
do
    file_count=`find ${dir} -maxdepth 1 -type f | wc -l | xargs`
    cat=${dir#"./"}
    lowercase=`echo $cat | tr '[A-Z]' '[a-z]' | tr '[ ]' '[_]'`
    echo "- [$cat](#gear-${lowercase}-${file_count})" >> $readme
done

for dir in ./Easy/* ./Medium/* ./Hard/*
do
    # fetching extesion & dir name from path
    file_name="$(basename $dir)"
    extension="${file_name##*.}"
    name="${file_name%.*}"

    # fetching question number from path
    ques_no=${name%%_*}

    # fetching question from path
    ques=${name#"$ques_no""_"}
    # ques=`echo $ques | sed 's/\([A-Z]\{1,\}\)/ \U\1/g;s/^_//' | xargs`
    ques=$(echo "$ques" | xargs | perl -pe 's/(?<=[a-z])(?=[A-Z])|(?<=[A-Z])(?=[A-Z][a-z])/\ /g')

    # echo $ques

    # fetching category number from path
    cat="${dir%"/${file_name}"}" # removing file_name(suffix)
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
        file_count=`find ./${cat}/ -maxdepth 1 -type f | wc -l | xargs`
        echo "## :gear: ${cat} ($file_count)" >> $readme
    fi

    # updating the readme only if it's a file
    if [ "$lang" != '' ]; then
        # echo ":point_right: ${ques_no}. ${ques} [${lang}]\n\r" >> $readme
        printf ":point_right: %s. %s <span style='color: orange'>[%s]</span>\n\n" "$ques_no" "$ques" "$lang" >> "$readme"
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