#!/bin/bash

echo -e "# GoF Patterns \n\n\n" >> README.md

writeMarkDown() {
	arrayIn=("$@")
	for patternName in ${arrayIn[@]}; do
	
		echo -e "### [${patternName}](https://github.com/AntonioSgarbi/${patternName}) \n" >> README.md	
		echo -e "\n\n"
	done
	
	
	echo ${arrayIn[@]}
	echo -e "\n\n____________array_end____________\n\n"
}

echo -e "## Creational \n\n" >> README.md

criacionais=("Singleton" "AbstractFactory" "FactoryMethod" "Prototype" "Builder")
writeMarkDown "${criacionais[@]}"

echo -e "\n\n## Structural \n\n" >> README.md

estruturais=("Adapter"  "Bridge"  "Composite"  "Decorator"  "Facade"  "Flyweight"  "Proxy")
writeMarkDown "${estruturais[@]}"

echo -e "\n\n## Behavioral \n\n" >> README.md

comportamentais=("ChainOfResponsability"  "Iterator"  "Observer"  "TemplateMethod" "Command" "Mediator" "State" "Visitor" "Interpreter" "Memento" "Strategy")
writeMarkDown "${comportamentais[@]}"


git init
git add .
git commit -m "Commit from script"
git branch -M main
git remote add origin git@github.com:AntonioSgarbi/Gof-Patterns.git
git push -u origin main

echo -e "\n\n *************** \n\n ** work done! ** \n\n *************** \n\n"
