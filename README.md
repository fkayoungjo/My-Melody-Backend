
## My Melody

My Melody is a music creator web app. Each row represents a note on a particular instrument and each column represents a time that note will be played. There are 32 time markers in total. Press play to hear your selections. Enter a name and press save to save your Melody for others to hear.

## Getting Started
![Image description](/Users/jordansimon/Development/My Melody Front End/Screen Shot 2019-04-01 at 9.17.20 AM.png)
To begin using fork and clone the project. CD into backend project folder. Use rake to create and migrate the database. Use rails start to server.

```
bash
rake db: create
```

```
bash
rake db: migrate
```

```
bash
rails start
```

CD into front end project folder. Open index.html in web browser

## Usage

```
function repeat(time) {
  let step = index % 32;
  for (let i = 0; i < rows.length; i++) {
    let synth = synths[i],
        note = notes[i],
        row = rows[i],
        input = row.querySelector(`input:nth-child(${step + 1})`);
    if (input.checked) synth.triggerAttackRelease(note, '8n', time);
  }
  index++;
}
```

## Built With

JavaScript,
Ruby on Rails,
Tone.js,
HTML,
CSS,
MySQL

## Authors

Jordan Simon - Initial Work

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Demo
https://youtu.be/ShjaMsb0eq4
