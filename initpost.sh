#!/bin/bash

# author: Marcos Oliveira <terminalroot.com.br>
# describe: Script to create an initial structure for posts in Jekyll
# version: 1.0
# license: MIT License

_usage(){
  cat <<EOF
usage: ${0##*/} options [title]

  Options:
    -c [title]    Show channel title
    -h            Print this help message
    -v            Print version

* Script in development
EOF

}

_skell(){

    _DATE=$(date +%Y-%m-%d)
    _TIME=$(date +%H:%M:%S)

    echo "---"
    echo "layout: post"
    echo "title: \"${1}\""
    echo "date: ${_DATE} ${_TIME}"
    echo "image: '/assets/images/'"
    echo "description:"
    echo "categories:"
    echo "imagepost: '/assets/images/'"
    echo "thumbnail: '/assets/images/blog/'"
    echo "ogtitle:"
    echo "ogtype:"
    echo "ogdescription:"
    echo "ogimage: '/assets/images/'"
    echo "tags:"
    echo "---"
    echo "<body>
 <div class='container'>
  <div class='blog-post-body'>
    <figure class='blog-banner'>
        <a href='{{ page.url }}'>
        <img class='img-fluid' src='{{ page.imagepost }}' alt='{{ page.title }}'></a>
        <figcaption class='mt-2 text-center image-caption'>Credit image: {{ site.author }}
        <a href='{{ page.url }}' target='_blank'></a></figcaption> 
    </figure>"
    echo
}

_initpost(){

    _PADRAO=$(date +%Y-%m-%d)
    _URL=$(echo $1 | sed 's/+/-/g' | tr A-Z a-z | tr -d '!@#$%&*()_<>}{~?^/:\"' | tr ' ' '-' | sed 's/--//g' |
          sed 'y/áÁàÀãÃâÂéÉêÊíÍóÓõÕôÔúÚüÜçÇ/aaaaaaaaeeeeiioooooouuuucc/' | tr -d ',.;:' | sed 's/-$//g')
    if [[ ! -f "_posts/${_PADRAO}-${_URL}.markdown" ]] ; then
      _skell "$1" > "_posts/$_PADRAO-$_URL.markdown"
      echo -e "\e[36;1m➜ File created successfully!\n\e[37;1m_posts/$_PADRAO-$_URL.markdown\e[m"
    else
      echo -e "\e[31;1m✖ Error: Ja existe um arquivo com este nome, tente outro.\e[m"
    fi
}

while getopts c:vh PARAM
do
	case "$PARAM" in
		c) _initpost "$OPTARG" ;;
		h) _usage && exit 0   ;;
		v) sed -n '/^#.*version/p' $0 | sed 's/^# //' ;;
		*) _usage && exit 1   ;;
	esac
# shift $(( OPTIND - 1 ))
done
