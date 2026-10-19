# 🗳️ Digital Voting Machine using Verilog HDL

An interactive Digital Voting Machine project built using **Verilog HDL, Xilinx Vivado 2017.4, HTML, CSS, and JavaScript**. This project demonstrates digital logic design, vote counting using sequential logic, testbench-based verification, and a responsive web interface.

## 🌐 Live Demo

**[Click here to try the Digital Voting Machine](https://malavikaa18.github.io/digital-voting-machine/)**

## 📌 Project Overview

The Digital Voting Machine allows users to cast votes for three candidates. The Verilog design uses clocked logic to maintain individual vote counters, while the web interface provides an interactive demonstration with live vote totals and visual results.

This project was developed as a beginner-friendly digital systems project to understand how counters, clock signals, reset logic, and input validation work in Verilog.

## ✨ Features

- Three candidates: A, B, and C
- Independent 8-bit vote counters
- Synchronous reset to clear all vote counts
- Clock-driven vote counting
- Ignores simultaneous candidate selections
- Prevents counter overflow beyond 255
- Automated testbench with PASS/FAIL verification
- Interactive website with live vote totals
- Visual vote-percentage bars and leading-candidate display
- CSV export and reset options

## 🛠️ Technologies Used

| Technology | Purpose |
|---|---|
| Verilog HDL | Digital circuit design |
| Xilinx Vivado 2017.4 | RTL simulation and verification |
| HTML | Website structure |
| CSS | Website styling and responsive layout |
| JavaScript | Interactive voting demonstration |
| Git and GitHub | Version control and project hosting |
| GitHub Pages | Website deployment |

## 📂 Project Structure

```text
digital-voting-machine/
├── voting_machine.v
├── tb_voting_machine.v
├── index.html
└── README.md
```

## ⚙️ How the Verilog Design Works

1. The clock controls when the circuit checks the vote inputs.
2. When reset is active at a rising clock edge, all vote counters become zero.
3. A valid selection increments the corresponding candidate's counter.
4. If no candidate or multiple candidates are selected, the counters remain unchanged.
5. Each counter is 8 bits wide and is limited to a maximum value of 255.

### Input and Output Signals

| Signal | Direction | Description |
|---|---|---|
| `clk` | Input | Clock signal |
| `reset` | Input | Clears all vote counters |
| `vote_a` | Input | Candidate A selection |
| `vote_b` | Input | Candidate B selection |
| `vote_c` | Input | Candidate C selection |
| `count_a` | Output | Candidate A vote total |
| `count_b` | Output | Candidate B vote total |
| `count_c` | Output | Candidate C vote total |

## ▶️ Run the Simulation in Vivado 2017.4

1. Open Xilinx Vivado 2017.4.
2. Create a new **RTL Project**.
3. Add `voting_machine.v` under **Design Sources**.
4. Add `tb_voting_machine.v` under **Simulation Sources**.
5. Set `tb_voting_machine` as the simulation top.
6. Select **Run Simulation → Run Behavioral Simulation**.
7. Check the output in the Tcl Console.

### Expected Simulation Output

```text
Candidate A votes: 2
Candidate B votes: 1
Candidate C votes: 3
PASS: All voting tests passed.
```

## 🖥️ Run the Website Locally

1. Download or clone this repository.
2. Open the project folder in VS Code.
3. Open `index.html` in a browser, or use the Live Server extension.
4. Select a candidate to cast a demo vote.
5. Test the live results, CSV export, and reset features.

## 📸 Screenshots

Add screenshots of your website and Vivado simulation here to make the project easier to understand.

Suggested images:

- `screenshots/website.png` — interactive voting website
- `screenshots/vivado-simulation.png` — simulation output and waveform

After adding the screenshots to a `screenshots` folder in the repository, uncomment and use these lines:

```markdown
![Digital Voting Machine Website](screenshots/website.png)

![Vivado Simulation](screenshots/vivado-simulation.png)
```

## 🎓 Concepts Learned

- Combinational and sequential logic concepts
- Clock edges and synchronous reset
- Case statements in Verilog
- 8-bit registers and counters
- Testbench development and simulation
- Functional verification of RTL designs
- Basic frontend development and GitHub Pages deployment

## ⚠️ Limitations

- The website and Verilog simulation are separate implementations and do not communicate with each other.
- Website votes are stored only in the current page session and reset when the page is reloaded.
- The website does not authenticate voters or prevent repeated voting.
- This is an educational demonstration, not a secure voting system for real elections.

## 🚀 Future Improvements

- Add a candidate selection lockout after one vote.
- Display additional simulation waveforms and test cases.
- Integrate the design with FPGA hardware and physical buttons or LEDs.
- Explore communication between a hardware implementation and a software interface.

## 👩‍💻 Author

**Malavika Pradeep**

ECE Student | Digital Logic Design | Verilog HDL | Embedded Systems

- GitHub: [@malavikaa18](https://github.com/malavikaa18)
- Project Repository: [digital-voting-machine](https://github.com/malavikaa18/digital-voting-machine)
- Live Demo: [VoteX Digital Voting Machine](https://malavikaa18.github.io/digital-voting-machine/)

---

*Developed as a beginner-friendly project to explore digital logic design and RTL simulation.*
