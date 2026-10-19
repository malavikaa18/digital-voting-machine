<CodeBlock language="markdown" editable>
# VoteX — Digital Voting Machine


A beginner-friendly digital voting machine prototype built using
Verilog HDL, AMD Xilinx Vivado 2017.4, HTML, CSS and JavaScript.

The project demonstrates sequential digital logic, vote counting,
testbench verification and an interactive browser dashboard.
Features
- Three-candidate voting system
- Clock-driven Verilog vote counters
- Synchronous reset functionality
- Protection against simultaneous vote inputs in the RTL design
- Vivado behavioral simulation and testbench
- Interactive candidate buttons and live vote totals
- Election result bars and leading-candidate display
- CSV export of demonstration results
- Responsive dark-mode interface
Technologies
- Verilog HDL
- AMD Xilinx Vivado 2017.4
- HTML5, CSS3 and JavaScript
- Git and GitHub
Project Structure
digital-voting-machine/
├── voting_machine.v
├── tb_voting_machine.v
├── index.html
└── README.md
Run the Website
1. Download or clone this repository.
2. Open index.html in a web browser.
3. Select a candidate to record a demonstration vote.
4. View the updated vote totals and result bars.
5. Export the results as a CSV file if desired.
No additional software is required for the web demo.
Run the Verilog Simulation
1. Open Vivado and create an RTL project.
2. Add voting_machine.v under Design Sources.
3. Add tb_voting_machine.v under Simulation Sources.
4. Set tb_voting_machine as the simulation top module.
5. Select Run Simulation → Run Behavioral Simulation.
6. Check the Tcl Console for the test result.
Expected output:
Candidate A votes: 2
Candidate B votes: 1
Candidate C votes: 3
PASS: All voting tests passed.


Hardware Concepts Demonstrated
- Sequential logic and clock edges
- Registers and 8-bit counters
- Synchronous reset
- Conditional control using case statements
- Testbench-driven functional verification
Limitations
This is an educational prototype, not a secure election system.
The website and Verilog simulation are separate demonstrations.
The browser does not communicate directly with the Verilog circuit.
The browser demo does not authenticate voters or prevent repeat votes.
Future Improvements
- Seven-segment display output
- FPGA board implementation
- Voter authentication and duplicate-vote prevention
- Display of vote totals on an LCD
- A hardware-connected web dashboard
Live Demo
After enabling GitHub Pages, add the published website URL here.
Author
Malavika Pradeep
Electronics and Communication Engineering Student
</CodeBlock>