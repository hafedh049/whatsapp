from json import load, dump

with open("assets/jsons/emoji.json") as file:
    emojis = load(file)
    tempo = []
    for x in emojis:
        if not x in tempo:
            tempo.append(x)

with open("assets/jsons/emoji.json", "w") as file:
    dump(tempo, file)
