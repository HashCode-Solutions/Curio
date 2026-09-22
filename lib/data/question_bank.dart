import 'package:flutter/material.dart';
import '../models/question.dart';
import '../theme/app_theme.dart';

/// Static in-memory bank for now. Swap [allQuestions] for a Firestore /
/// REST call later — everything downstream just filters a List<Question>,
/// so the screens don't need to change.
const topics = <Topic>[
  Topic(
    id: 'technology',
    name: 'Technology',
    icon: Icons.developer_board_outlined,
    tint: AppColors.techTint,
    accent: AppColors.teal,
  ),
  Topic(
    id: 'science',
    name: 'Science',
    icon: Icons.science_outlined,
    tint: AppColors.sciTint,
    accent: AppColors.marigold,
  ),
  Topic(
    id: 'history',
    name: 'History',
    icon: Icons.account_balance_outlined,
    tint: AppColors.histTint,
    accent: AppColors.raspberry,
  ),
  Topic(
    id: 'geography',
    name: 'Geography',
    icon: Icons.public_outlined,
    tint: AppColors.geoTint,
    accent: AppColors.moss,
  ),
];

final List<Question> allQuestions = [
  // technology -> Difficulty.easy
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt: 'What does "URL" stand for?',
    options: [
      'Uniform Resource Locator',
      'Universal Reading List',
      'User Response Log',
      'Unified Retrieval Line',
    ],
    correctIndex: 0,
    explanation:
        'A URL is the address that tells a browser exactly where a resource lives on the web.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt: 'Which company created the Windows operating system?',
    options: ['Apple', 'Microsoft', 'Google', 'IBM'],
    correctIndex: 1,
    explanation:
        'Microsoft was founded by Bill Gates and Paul Allen and developed the Windows OS family.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt: 'What does "CPU" stand for in computing?',
    options: [
      'Central Processing Unit',
      'Computer Personal Unit',
      'Central Program Utility',
      'Core Processing Utility',
    ],
    correctIndex: 0,
    explanation:
        'The CPU is considered the brain of the computer, executing instructions from software and hardware.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt:
        'What social media network was founded by Mark Zuckerberg and others in 2004?',
    options: ['Twitter', 'Instagram', 'Facebook', 'LinkedIn'],
    correctIndex: 2,
    explanation:
        'Facebook was originally launched from a Harvard dorm room in February 2004.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt: 'What does "Wi-Fi" generally stand for as an industry term?',
    options: [
      'Wireless Fidelity',
      'Wide Frequency',
      'Web Filter',
      'It does not stand for anything; it is a catchphrase',
    ],
    correctIndex: 3,
    explanation:
        'Wi-Fi is a trademarked phrase created by a branding firm and does not officially stand for "Wireless Fidelity."',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt: 'Which tech giant produces the iPhone and Mac computers?',
    options: ['Samsung', 'Sony', 'Apple', 'Huawei'],
    correctIndex: 2,
    explanation:
        'Apple Inc. designs and manufactures consumer electronics, including the iPhone and Macintosh line.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt: 'What does the "USB" acronym stand for?',
    options: [
      'Universal Serial Bus',
      'Uniform System Board',
      'User Service Bridge',
      'Unencrypted Serial Block',
    ],
    correctIndex: 0,
    explanation:
        'USB is an industry standard for connection, communication, and power supply between computers and devices.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt:
        'What file format is heavily used for compressed documents and stands for Portable Document Format?',
    options: ['DOCX', 'PDF', 'XLSX', 'TXT'],
    correctIndex: 1,
    explanation:
        'PDF was developed by Adobe to present documents independent of application software, hardware, and operating systems.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt:
        'What type of peripheral device is a computer monitor classified as?',
    options: [
      'Input device',
      'Output device',
      'Storage device',
      'Processing device',
    ],
    correctIndex: 1,
    explanation:
        'A monitor displays visual data sent by the computer, making it a primary output device.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.easy,
    prompt:
        'What animal is featured as the mascot for the Linux operating system?',
    options: ['A cheetah', 'A penguin', 'An owl', 'A fox'],
    correctIndex: 1,
    explanation:
        'Tux the Penguin is the official mascot of the Linux kernel, created by Larry Ewing in 1996.',
  ),

  // technology -> Difficulty.medium
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt: 'Which protocol does a browser use to securely load a web page?',
    options: ['FTP', 'HTTPS', 'SMTP', 'POP3'],
    correctIndex: 1,
    explanation:
        'HTTPS encrypts the connection between browser and server. SMTP is for sending email, not loading pages.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt: 'What does "CSS" stand for in web development?',
    options: [
      'Cascading Style Sheets',
      'Computer Style System',
      'Creative Sheet Styling',
      'Coded Style Syntax',
    ],
    correctIndex: 0,
    explanation:
        'CSS controls layout, color, and spacing — separating a page\'s look from its HTML structure.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt: 'What does the acronym "RAM" stand for?',
    options: [
      'Read Access Memory',
      'Random Access Memory',
      'Rapid Application Module',
      'Remote Allocation Machine',
    ],
    correctIndex: 1,
    explanation:
        'RAM is high-speed volatile memory that stores data currently in use by the processor.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt:
        'Which company acquired Android Inc. in 2005 before turning it into the world\'s most popular mobile OS?',
    options: ['Apple', 'Microsoft', 'Google', 'Yahoo'],
    correctIndex: 2,
    explanation:
        'Google purchased Android for a reported 50 million, eventually launching it as an open-source rival to iOS.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt:
        'Who is widely credited with proposing the World Wide Web in 1989 while working at CERN?',
    options: ['Bill Gates', 'Tim Berners-Lee', 'Vint Cerf', 'Alan Turing'],
    correctIndex: 1,
    explanation:
        'Sir Tim Berners-Lee invented the World Wide Web, creating the first web browser and server protocol.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt:
        'What does the initialism "SSD" stand for in modern computer storage?',
    options: [
      'Super Speed Drive',
      'Solid State Drive',
      'System Silicon Disk',
      'Sequential Serial Device',
    ],
    correctIndex: 1,
    explanation:
        'An SSD uses integrated circuit assemblies as memory to store data persistently, replacing mechanical hard drives.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt:
        'Which web browser was originally developed by Netscape Communications and is considered a pioneer of the 1990s web boom?',
    options: ['Internet Explorer', 'Netscape Navigator', 'Mosaic', 'Opera'],
    correctIndex: 1,
    explanation:
        'Netscape Navigator was the dominant web browser of the mid-1990s before the browser wars with Microsoft.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt: 'What does "API" stand for in software development?',
    options: [
      'Application Programming Interface',
      'Advanced Program Integration',
      'Automated Protocol Interchange',
      'Application Process Interaction',
    ],
    correctIndex: 0,
    explanation:
        'APIs allow different software programs to talk to each other and exchange data smoothly.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt:
        'What open-source version control system was created by Linus Torvalds in 2005?',
    options: ['Subversion', 'Git', 'Mercurial', 'CVS'],
    correctIndex: 1,
    explanation:
        'Git was built to manage development of the Linux kernel with distributed version control tracking.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.medium,
    prompt:
        'Which programming language was created by James Gosling at Sun Microsystems and released in 1995?',
    options: ['Python', 'C++', 'Java', 'Ruby'],
    correctIndex: 2,
    explanation:
        'Java was designed with the WORA (Write Once, Run Anywhere) paradigm in mind.',
  ),

  // technology -> Difficulty.hard
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt: 'In Big-O notation, what is the time complexity of binary search?',
    options: ['O(n)', 'O(n log n)', 'O(log n)', 'O(1)'],
    correctIndex: 2,
    explanation:
        'Binary search halves the search space each step, so the time grows logarithmically with input size.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'Which chess-playing supercomputer developed by IBM defeated world champion Garry Kasparov in 1997?',
    options: ['Watson', 'Deep Blue', 'AlphaGo', 'Hydra'],
    correctIndex: 1,
    explanation:
        'Deep Blue marked a historic milestone for artificial intelligence in competitive board games.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'Who is widely recognized in computing history as the world\'s first computer programmer?',
    options: ['Alan Turing', 'Charles Babbage', 'Ada Lovelace', 'Grace Hopper'],
    correctIndex: 2,
    explanation:
        'Ada Lovelace wrote an algorithm for Babbage\'s mechanical computer, the Analytical Engine, in the 1840s.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'What is the name of the microprocessor architecture designed by a British company that powers nearly all modern smartphones?',
    options: ['x86', 'ARM', 'MIPS', 'PowerPC'],
    correctIndex: 1,
    explanation:
        'ARM (Advanced RISC Machines) architecture emphasizes energy efficiency, making it ideal for mobile processors.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'In what year was the very first commercial microprocessor, the Intel 4004, released to the public?',
    options: ['1965', '1971', '1976', '1982'],
    correctIndex: 1,
    explanation:
        'The Intel 4004 was released in November 1971, cramming a CPU onto a single silicon chip for calculators.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt: 'What concept does the acronym "CAPTCHA" stand for?',
    options: [
      'Computer Automated Program to Tell Computers and Humans Apart',
      'Completely Automated Public Turing test to tell Computers and Humans Apart',
      'Code Analysis Protocol for Tracking Cyber Attacks',
      'Core Algorithm for Processing Technical User Authentication',
    ],
    correctIndex: 1,
    explanation:
        'CAPTCHAs are challenge-response tests used in computing to determine whether the user is human.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'What network configuration term refers to a private network that securely extends across a public network like the internet?',
    options: ['LAN', 'VPN', 'WAN', 'SAN'],
    correctIndex: 1,
    explanation:
        'A Virtual Private Network (VPN) encrypts connection traffic to shield user data from public monitoring.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'What standard body is globally responsible for maintaining guidelines and recommendations for the World Wide Web (W3C)?',
    options: [
      'The Internet Engineering Task Force (IETF)',
      'World Wide Web Consortium',
      'IEEE Standards Association',
      'International Telecommunication Union (ITU)',
    ],
    correctIndex: 1,
    explanation:
        'Founded by Tim Berners-Lee, the W3C develops international standards and protocols for the web.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'Which famous computer scientist formulated the concept of a universal machine that could compute anything computable in 1936?',
    options: [
      'John von Neumann',
      'Claude Shannon',
      'Alan Turing',
      'Norbert Wiener',
    ],
    correctIndex: 2,
    explanation:
        'The theoretical model known as the Turing Machine laid the rigorous mathematical groundwork for modern computer science.',
  ),
  const Question(
    topicId: 'technology',
    difficulty: Difficulty.hard,
    prompt:
        'What was the name of the first programmable, electronic computer, completed during World War II in the US?',
    options: ['ENIAC', 'Colossus', 'UNIVAC', 'The Manchester Baby'],
    correctIndex: 0,
    explanation:
        'ENIAC (Electronic Numerical Integrator and Computer) was operational in 1945 for calculating artillery tables.',
  ),

  // science -> Difficulty.easy
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'What is the chemical symbol for the element Gold?',
    options: ['Ag', 'Au', 'Gd', 'Go'],
    correctIndex: 1,
    explanation:
        'Au comes from the Latin word for gold, "aurum", meaning "shining dawn".',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'Which planet in our solar system is known as the Red Planet?',
    options: ['Venus', 'Saturn', 'Mars', 'Jupiter'],
    correctIndex: 2,
    explanation:
        'Mars gets its characteristic reddish color from iron oxide (rust) covering its surface.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt:
        'What gas do plants absorb from the atmosphere during photosynthesis?',
    options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
    correctIndex: 1,
    explanation:
        'Plants use carbon dioxide, water, and sunlight to synthesize food via photosynthesis.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt:
        'At what temperature Celsius does pure water freeze under normal atmospheric pressure?',
    options: ['0°C', '32°C', '-10°C', '100°C'],
    correctIndex: 0,
    explanation:
        'Water freezes at 0 degrees Celsius (or 32 degrees Fahrenheit).',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt:
        'What is the primary organ responsible for pumping blood through the human body?',
    options: ['Lungs', 'Brain', 'Heart', 'Liver'],
    correctIndex: 2,
    explanation:
        'The heart is a muscular organ that circulates blood throughout the cardiovascular system.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'What is the center of our solar system?',
    options: ['Earth', 'The Moon', 'The Sun', 'Jupiter'],
    correctIndex: 2,
    explanation:
        'The Sun is the star at the absolute center of our solar system, with all planets orbiting around it.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'What is the hardest natural substance found on Earth?',
    options: ['Gold', 'Iron', 'Diamond', 'Quartz'],
    correctIndex: 2,
    explanation:
        'Diamond is an allotrope of carbon arranged in a crystal structure that makes it extraordinarily hard.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'What force keeps objects anchored to the surface of the Earth?',
    options: ['Magnetism', 'Gravity', 'Friction', 'Centrifugal force'],
    correctIndex: 1,
    explanation:
        'Gravity is the natural phenomenon by which all things with mass are brought toward one another.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'How many bones are there in an average adult human body?',
    options: ['150', '206', '300', '412'],
    correctIndex: 1,
    explanation:
        'An adult human skeleton consists of 206 distinct bones, down from over 270 at birth as many fuse together.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.easy,
    prompt: 'What is the chemical formula for common table water?',
    options: ['CO2', 'NaCl', 'H2O', 'O2'],
    correctIndex: 2,
    explanation:
        'Each molecule of water consists of two hydrogen atoms bonded to one oxygen atom.',
  ),

  // science -> Difficulty.medium
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt: 'What is the powerhouse of the cell?',
    options: ['Nucleus', 'Mitochondria', 'Ribosome', 'Golgi apparatus'],
    correctIndex: 1,
    explanation:
        'Mitochondria convert nutrients into ATP, the energy currency cells run on.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt:
        'What cellular structure is widely known as the powerhouse of the cell?',
    options: ['Nucleus', 'Ribosome', 'Mitochondria', 'Golgi apparatus'],
    correctIndex: 2,
    explanation:
        'Mitochondria generate most of the chemical energy needed to power cellular biochemical reactions (ATP).',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt: 'What is the chemical symbol for the element Iron?',
    options: ['Ir', 'In', 'Fe', 'Fi'],
    correctIndex: 2,
    explanation:
        'The symbol Fe is derived from the Latin word "ferrum", meaning iron.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt: 'What subatomic particle carries a negative electrical charge?',
    options: ['Proton', 'Neutron', 'Electron', 'Positron'],
    correctIndex: 2,
    explanation:
        'Electrons orbit the nucleus of an atom and carry a negative fundamental charge.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt:
        'Who proposed the theory of general relativity in the early 20th century?',
    options: [
      'Isaac Newton',
      'Albert Einstein',
      'Niels Bohr',
      'Galileo Galilei',
    ],
    correctIndex: 1,
    explanation:
        'Einstein published his revolutionary theory describing gravity not as a force, but as a curvature of spacetime.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt:
        'What is the pH value of pure water at standard laboratory conditions?',
    options: ['0', '5', '7', '14'],
    correctIndex: 2,
    explanation:
        'A pH of 7 represents a strictly neutral substance, neither acidic nor basic (alkaline).',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt:
        'What gas makes up the vast majority of Earth’s atmosphere by volume?',
    options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Argon'],
    correctIndex: 2,
    explanation:
        'Nitrogen accounts for approximately 78% of Earth’s atmosphere, with oxygen making up about 21%.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt:
        'What is the process by which a liquid turns directly into a gas without passing through the liquid phase?',
    options: ['Evaporation', 'Sublimation', 'Condensation', 'Melting'],
    correctIndex: 1,
    explanation:
        'Sublimation is a phase transition directly from solid to gas, like dry ice turning into carbon dioxide vapor.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt:
        'Which vitamin is synthesized in human skin when exposed to ultraviolet light from the sun?',
    options: ['Vitamin A', 'Vitamin C', 'Vitamin D', 'Vitamin K'],
    correctIndex: 2,
    explanation:
        'Vitamin D is nicknamed the sunshine vitamin because UV rays trigger its synthesis in epidermal skin cells.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.medium,
    prompt: 'What is the largest organ of the human body?',
    options: ['Liver', 'Brain', 'Skin', 'Small intestine'],
    correctIndex: 2,
    explanation:
        'The skin (integumentary system) is the body\'s largest external organ, providing protection and sensory input.',
  ),

  // science -> Difficulty.hard
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'According to the Standard Model of particle physics, what elementary particle gives other particles mass?',
    options: ['Photon', 'Gluon', 'Higgs boson', 'Neutrino'],
    correctIndex: 2,
    explanation:
        'The Higgs boson is associated with the Higgs field, which confers mass to fundamental particles via interaction.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What is the heaviest naturally occurring chemical element on the periodic table by atomic number?',
    options: ['Uranium', 'Plutonium', 'Lead', 'Radon'],
    correctIndex: 0,
    explanation:
        'Uranium (atomic number 92) is the heaviest naturally occurring element found in significant quantities on Earth.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What specific type of chemical bond involves the sharing of electron pairs between atoms?',
    options: ['Ionic bond', 'Covalent bond', 'Hydrogen bond', 'Metallic bond'],
    correctIndex: 1,
    explanation:
        'Covalent bonds occur when atoms share electrons to achieve stable electronic configurations.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What biological term describes the maintenance of a stable internal state within an organism despite external changes?',
    options: ['Metabolism', 'Homeostasis', 'Osmosis', 'Catabolism'],
    correctIndex: 1,
    explanation:
        'Homeostasis regulates internal conditions (like body temperature and pH) to ensure survival.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What phenomenon occurs when light or other electromagnetic waves are bent as they pass through an aperture or around an obstacle?',
    options: ['Reflection', 'Refraction', 'Diffraction', 'Polarization'],
    correctIndex: 2,
    explanation:
        'Diffraction is the bending and spreading of waves when they encounter an obstacle or opening.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What genetic code feature means that multiple codons can code for the exact same single amino acid?',
    options: [
      'Degeneracy (Redundancy)',
      'Mutagenesis',
      'Transcription',
      'Splicing',
    ],
    correctIndex: 0,
    explanation:
        'The genetic code is degenerate because 64 triplets code for only 20 amino acids.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What specialized instrument is used to measure the intensity of earthquakes?',
    options: ['Barometer', 'Seismograph', 'Anemometer', 'Manometer'],
    correctIndex: 1,
    explanation:
        'A seismograph detects and records ground motion caused by seismic waves, earthquake tremors, or explosions.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What subatomic force is responsible for radioactive decay and nuclear fusion inside stars?',
    options: [
      'Strong nuclear force',
      'Weak nuclear force',
      'Electromagnetic force',
      'Gravitational force',
    ],
    correctIndex: 1,
    explanation:
        'The weak nuclear interaction plays a critical role in particle decay and nuclear fusion processes.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What is the name of the fluid portion of blood that remains after red blood cells, white blood cells, and platelets are removed?',
    options: ['Lymph', 'Serum', 'Plasma', 'Synovial fluid'],
    correctIndex: 2,
    explanation:
        'Blood plasma is the yellowish liquid component of blood that holds blood cells in whole blood suspended.',
  ),
  const Question(
    topicId: 'science',
    difficulty: Difficulty.hard,
    prompt:
        'What is the term for a cell that has half the normal number of chromosomes, typical of human gametes?',
    options: ['Diploid', 'Haploid', 'Polyploid', 'Zygote'],
    correctIndex: 1,
    explanation:
        'Haploid cells (like sperm and egg cells) contain a single set of unpaired chromosomes (n = 23 in humans).',
  ),

  // history -> Difficulty.easy
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'In what year did the RMS Titanic sink in the Atlantic Ocean on its maiden voyage?',
    options: ['1905', '1912', '1918', '1923'],
    correctIndex: 1,
    explanation:
        'The Titanic struck an iceberg on the night of April 14, 1912, and sank early the next morning.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt: 'Who was the first President of the United States?',
    options: [
      'Thomas Jefferson',
      'Abraham Lincoln',
      'George Washington',
      'John Adams',
    ],
    correctIndex: 2,
    explanation:
        'George Washington led the Continental Army to victory and served as the first U.S. President from 1789 to 1797.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'In which ancient civilization were the monumental pyramids of Giza built?',
    options: ['Ancient Greece', 'Ancient Rome', 'Ancient Egypt', 'Mesopotamia'],
    correctIndex: 2,
    explanation:
        'The Great Pyramids were constructed as monumental tombs for pharaohs along the Nile in Ancient Egypt.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'What wall divided Berlin into East and West from 1961 until its fall in 1989?',
    options: [
      'The Great Wall',
      'The Iron Curtain',
      'The Berlin Wall',
      'The Atlantic Wall',
    ],
    correctIndex: 2,
    explanation:
        'The Berlin Wall was built by the German Democratic Republic to separate West Berlin from East Berlin.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'Who was the famous British prime minister who led the nation through most of World War II?',
    options: [
      'Neville Chamberlain',
      'Winston Churchill',
      'Clement Attlee',
      'Arthur Wellesley',
    ],
    correctIndex: 1,
    explanation:
        'Winston Churchill served as Prime Minister from 1940 to 1945 and inspired Allied resistance with his speeches.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt: 'What global conflict lasted from 1939 to 1945?',
    options: ['World War I', 'World War II', 'The Cold War', 'The Vietnam War'],
    correctIndex: 1,
    explanation:
        'World War II involved the vast majority of the world\'s nations, divided into the Allies and the Axis powers.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'Which historic empire built an extensive network of roads across Europe, North Africa, and the Middle East?',
    options: [
      'The Roman Empire',
      'The Mongol Empire',
      'The Ottoman Empire',
      'The Persian Empire',
    ],
    correctIndex: 0,
    explanation:
        'Roman roads connected the massive republic and empire, facilitating trade, communication, and military movement.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'What Italian explorer completed a historic voyage across the Atlantic in 1492 under the Spanish flag?',
    options: [
      'Vasco da Gama',
      'Ferdinand Magellan',
      'Christopher Columbus',
      'Amerigo Vespucci',
    ],
    correctIndex: 2,
    explanation:
        'Columbus sailed the Nina, Pinta, and Santa Maria, landing in the Bahamas and opening the Americas to European exploration.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'What ancient civilization is credited with originating the concept of democracy in the city-state of Athens?',
    options: ['Ancient Rome', 'Ancient Greece', 'Babylon', 'Carthage'],
    correctIndex: 1,
    explanation:
        'Classical Athens developed a system of direct citizen democracy around the 5th century BCE.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.easy,
    prompt:
        'In what year did the American colonies declare their independence from Great Britain?',
    options: ['1776', '1789', '1812', '1865'],
    correctIndex: 0,
    explanation:
        'The Declaration of Independence was formally adopted by the Continental Congress on July 4, 1776.',
  ),

  // history -> Difficulty.medium
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'What treaty officially ended the state of war between Germany and the Allied Powers in June 1919?',
    options: [
      'The Treaty of Paris',
      'The Treaty of Versailles',
      'The Treaty of Ghent',
      'The Treaty of Utrecht',
    ],
    correctIndex: 1,
    explanation:
        'The Treaty of Versailles was signed in the Hall of Mirrors, imposing heavy reparations on Germany.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'Who was the last ruling Empress of Russia, belonging to the Romanov dynasty, before the 1917 revolution?',
    options: [
      'Catherine the Great',
      'Empress Elizabeth',
      'Tsarina Alexandra',
      'Sofia Alekseyevna',
    ],
    correctIndex: 2,
    explanation:
        'Tsarina Alexandra Feodorovna was the final Empress consort, executed alongside her family by Bolsheviks.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'Which medieval document, signed by King John in 1215, limited the power of the English monarchy?',
    options: [
      'The Magna Carta',
      'The Bill of Rights',
      'The Domesday Book',
      'The Petition of Right',
    ],
    correctIndex: 0,
    explanation:
        'Magna Carta established the principle that nobody, including the king, was above the law.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'What major historical event began with the storming of the Bastille fortress on July 14, 1789?',
    options: [
      'The American Revolution',
      'The French Revolution',
      'The Russian Revolution',
      'The Industrial Revolution',
    ],
    correctIndex: 1,
    explanation:
        'The storming of the Bastille served as a flashpoint for the French Revolution and the overthrow of the monarchy.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'Who was the famous Carthaginian general who fought against Rome in the Second Punic War using war elephants?',
    options: ['Scipio Africanus', 'Spartacus', 'Hannibal', 'Pyrrhus'],
    correctIndex: 2,
    explanation:
        'Hannibal famously marched an army across the Alps to surprise Roman forces on the Italian peninsula.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'What pandemic swept through Europe and Asia during the mid-14th century, wiping out a huge portion of the population?',
    options: [
      'The 1918 Flu',
      'The Antonine Plague',
      'The Black Death (Bubonic Plague)',
      'Smallpox',
    ],
    correctIndex: 2,
    explanation:
        'The Black Death caused millions of deaths, profoundly altering the social and economic structure of medieval Europe.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'What dynasty ruled China during the construction of the Forbidden City and major extensions of the Great Wall?',
    options: ['Tang Dynasty', 'Ming Dynasty', 'Qing Dynasty', 'Han Dynasty'],
    correctIndex: 1,
    explanation:
        'The Ming Dynasty ruled China from 1368 to 1644, marked by immense architectural and maritime expansion.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'Which political leader signed the Civil Rights Act of 1964 into law in the United States?',
    options: [
      'John F. Kennedy',
      'Lyndon B. Johnson',
      'Dwight D. Eisenhower',
      'Richard Nixon',
    ],
    correctIndex: 1,
    explanation:
        'President Lyndon B. Johnson signed the landmark legislation prohibiting discrimination based on race, color, or religion.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'In what year did the Soviet Union formally dissolve, marking the end of the Cold War era?',
    options: ['1985', '1989', '1991', '1995'],
    correctIndex: 2,
    explanation:
        'The dissolution of the Soviet Union resulted in 15 independent post-Soviet countries in December 1991.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.medium,
    prompt:
        'Who was the Egyptian queen that formed strategic alliances with Julius Caesar and Mark Antony during the late Roman Republic?',
    options: ['Nefertiti', 'Cleopatra VII', 'Hatshepsut', 'Ankhesenamun'],
    correctIndex: 1,
    explanation:
        'Cleopatra VII was the active last ruler of the Ptolemaic Kingdom of Egypt before annexation by Rome.',
  ),

  // history -> Difficulty.hard
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What was the code name for the secret allied project to develop the first nuclear weapons during World War II?',
    options: [
      'Operation Barbarossa',
      'The Manhattan Project',
      'Project Overlord',
      'The Trinity Initiative',
    ],
    correctIndex: 1,
    explanation:
        'Led by physicist J. Robert Oppenheimer, the Manhattan Project developed the atomic bombs used in 1945.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'Which famous battle in 1066 marked the end of Anglo-Saxon rule in England and the start of Norman rule?',
    options: [
      'The Battle of Agincourt',
      'The Battle of Hastings',
      'The Battle of Bannockburn',
      'The Battle of Bosworth Field',
    ],
    correctIndex: 1,
    explanation:
        'William the Conqueror defeated King Harold II at the Battle of Hastings in October 1066.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What empire was ruled by figures like Genghis Khan and Kublai Khan, becoming the largest contiguous land empire in history?',
    options: [
      'The Ottoman Empire',
      'The Mongol Empire',
      'The Byzantine Empire',
      'The Austro-Hungarian Empire',
    ],
    correctIndex: 1,
    explanation:
        'The Mongol Empire spanned across Asia and Eastern Europe during the 13th and 14th centuries.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What 1648 series of peace treaties ended both the Thirty Years\' War and the Eighty Years\' War in Europe?',
    options: [
      'The Peace of Westphalia',
      'The Treaty of Utrecht',
      'The Congress of Vienna',
      'The Treaty of Aix-la-Chapelle',
    ],
    correctIndex: 0,
    explanation:
        'The Peace of Westphalia established the foundational concept of national sovereignty in international law.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'Who was the first emperor of a unified China, known for commissioning the Terracotta Army near Xi\'an?',
    options: [
      'Emperor Wu of Han',
      'Qin Shi Huang',
      'Emperor Taizong of Tang',
      'Kublai Khan',
    ],
    correctIndex: 1,
    explanation:
        'Qin Shi Huang unified the warring states of China in 221 BCE and established the short-lived Qin Dynasty.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What was the primary goal of the Crusades initiated by the Catholic Church in medieval Europe?',
    options: [
      'To explore trade routes to India',
      'To recapture Jerusalem and the Holy Land from Islamic rule',
      'To overthrow the Byzantine Empire',
      'To suppress the Protestant Reformation',
    ],
    correctIndex: 1,
    explanation:
        'Beginning in 1095 with Pope Urban II, the Crusades were military campaigns aimed at securing Christian control over holy sites.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'Which Byzantine Emperor compiled and revised Roman law into the Corpus Juris Civilis during the 6th century?',
    options: [
      'Constantine the Great',
      'Justinian I',
      'Theodosius I',
      'Heraclius',
    ],
    correctIndex: 1,
    explanation:
        'Emperor Justinian I oversaw a massive legal overhaul that forms the foundation of civil law in many modern nations.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What historical pact was signed in 1939 between Nazi Germany and the Soviet Union, which was later broken by Operation Barbarossa?',
    options: [
      'The Munich Agreement',
      'The Anti-Comintern Pact',
      'The Molotov-Ribbentrop Pact',
      'The Tripartite Pact',
    ],
    correctIndex: 2,
    explanation:
        'The Molotov-Ribbentrop Pact was a non-aggression treaty that secretly divided spheres of interest in Eastern Europe.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What famous naval battle in 480 BCE saw a Greek fleet defeat a much larger Persian armada under Xerxes?',
    options: [
      'The Battle of Salamis',
      'The Battle of Marathon',
      'The Battle of Actium',
      'The Battle of Lepanto',
    ],
    correctIndex: 0,
    explanation:
        'Fought in the straits between the mainland and Salamis, the Greek triremes destroyed the Persian navy.',
  ),
  const Question(
    topicId: 'history',
    difficulty: Difficulty.hard,
    prompt:
        'What radical political faction, led by Maximilien Robespierre, governed France during the Reign of Terror?',
    options: [
      'The Girondins',
      'The Jacobins',
      'The Feuillants',
      'The Cordeliers',
    ],
    correctIndex: 1,
    explanation:
        'The Jacobins exercised authoritarian control during the peak of the French Revolution, using the guillotine extensively.',
  ),

  // geography -> Difficulty.easy
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt:
        'What is the tallest mountain in the world when measured above sea level?',
    options: ['K2', 'Mount Kilimanjaro', 'Mount Everest', 'Denali'],
    correctIndex: 2,
    explanation:
        'Mount Everest peaks at approximately 8,848 meters (29,031 feet) above sea level in the Himalayas.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt: 'Which ocean is the largest on Earth by surface area?',
    options: [
      'Atlantic Ocean',
      'Indian Ocean',
      'Arctic Ocean',
      'Pacific Ocean',
    ],
    correctIndex: 3,
    explanation:
        'The Pacific Ocean covers more area than all of Earth\'s landmasses combined.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt: 'What is the capital city of France?',
    options: ['London', 'Berlin', 'Madrid', 'Paris'],
    correctIndex: 3,
    explanation:
        'Paris is the capital and most populous city of France, famous for landmarks like the Eiffel Tower.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt: 'Which country is both a sovereign nation and a continent?',
    options: ['New Zealand', 'Australia', 'Madagascar', 'Greenland'],
    correctIndex: 1,
    explanation:
        'Australia is unique for being recognized as both a country and a continental landmass.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt:
        'What is the longest river in the world by traditional geographic consensus?',
    options: [
      'The Amazon River',
      'The Nile River',
      'The Mississippi River',
      'The Yangtze River',
    ],
    correctIndex: 1,
    explanation:
        'The Nile River flows northward through Africa for approximately 6,650 kilometers.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt:
        'Which European country is famously shaped like a high-heeled boot?',
    options: ['Spain', 'Greece', 'Italy', 'France'],
    correctIndex: 2,
    explanation:
        'The Italian Peninsula extends into the Mediterranean Sea with a clear boot-like geographic profile.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt: 'What is the largest country in the world by total land area?',
    options: ['Canada', 'China', 'United States', 'Russia'],
    correctIndex: 3,
    explanation:
        'Russia spans across 11 time zones and covers over 17 million square kilometers.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt: 'What desert is recognized as the largest hot desert in the world?',
    options: [
      'The Gobi Desert',
      'The Mojave Desert',
      'The Sahara Desert',
      'The Kalahari Desert',
    ],
    correctIndex: 2,
    explanation:
        'The Sahara Desert spans across most of North Africa, covering an area comparable to China or the U.S.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt:
        'What imaginary line divides the Earth into the Northern and Southern Hemispheres?',
    options: [
      'The Prime Meridian',
      'The Equator',
      'The Tropic of Cancer',
      'The International Date Line',
    ],
    correctIndex: 1,
    explanation:
        'The Equator is the zero-latitude parallel that circles the globe midway between the poles.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.easy,
    prompt: 'What is the capital city of Japan?',
    options: ['Kyoto', 'Osaka', 'Tokyo', 'Hiroshima'],
    correctIndex: 2,
    explanation:
        'Tokyo is the bustling capital of Japan and the core of the world\'s most populous metropolitan area.',
  ),

  // geography -> Difficulty.medium
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'Which African country has the highest population as of recent demographic estimates?',
    options: ['Egypt', 'Nigeria', 'Ethiopia', 'South Africa'],
    correctIndex: 1,
    explanation:
        'Nigeria is the most populous nation in Africa, followed closely by countries like Ethiopia and Egypt.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'Which landlocked country is entirely surrounded by the nation of South Africa?',
    options: ['Eswatini', 'Lesotho', 'Botswana', 'Zimbabwe'],
    correctIndex: 1,
    explanation:
        'Lesotho is an enclave completely enclosed by South African territory, sitting high in mountainous terrain.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'What is the capital of Australia, often mistakenly thought to be Sydney or Melbourne?',
    options: ['Sydney', 'Melbourne', 'Canberra', 'Brisbane'],
    correctIndex: 2,
    explanation:
        'Canberra was purpose-built as a planned capital city to settle rivalries between Sydney and Melbourne.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'Which artificial waterway connects the Atlantic Ocean to the Pacific Ocean across an isthmus in Central America?',
    options: [
      'The Suez Canal',
      'The Panama Canal',
      'The Kiel Canal',
      'The Corinth Canal',
    ],
    correctIndex: 1,
    explanation:
        'The Panama Canal cuts across the Isthmus of Panama, serving as a vital shortcut for international maritime trade.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'What mountain range acts as a natural geographic barrier dividing Europe from Asia?',
    options: ['The Alps', 'The Andes', 'The Ural Mountains', 'The Himalayas'],
    correctIndex: 2,
    explanation:
        'The Ural Mountains run north-south through Russia, commonly designated as part of the boundary between continents.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'What is the largest lake in the world by surface area, despite its name confusingly containing "sea"?',
    options: [
      'Lake Superior',
      'The Caspian Sea',
      'Lake Victoria',
      'The Aral Sea',
    ],
    correctIndex: 1,
    explanation:
        'The Caspian Sea is an endorheic body of water bound by Europe and Asia, classified as the world\'s largest lake.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'Which country features a distinctive cedar tree emblem right in the center of its national flag?',
    options: ['Cyprus', 'Lebanon', 'Canada', 'Norfolk Island'],
    correctIndex: 1,
    explanation:
        'The flag of Lebanon features a green cedar tree (Cedrus libani) symbolizing peace, eternity, and holiness.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'What is the northernmost capital city of an independent sovereign nation in the world?',
    options: [
      'Oslo, Norway',
      'Helsinki, Finland',
      'Reykjavik, Iceland',
      'Stockholm, Sweden',
    ],
    correctIndex: 2,
    explanation:
        'Reykjavik, the capital of Iceland, sits just south of the Arctic Circle, making it the northernmost national capital.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt: 'Through how many countries does the mighty Amazon River flow?',
    options: [
      'Only Brazil',
      'Brazil and Peru',
      'Brazil, Peru, and Colombia',
      'Nine countries across South America',
    ],
    correctIndex: 3,
    explanation:
        'The Amazon basin drains parts of Brazil, Peru, Colombia, Bolivia, Ecuador, Venezuela, Guyana, Suriname, and French Guiana.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.medium,
    prompt:
        'What tiny European microstate is situated entirely within the city limits of Rome, Italy?',
    options: ['Monaco', 'San Marino', 'Vatican City', 'Liechtenstein'],
    correctIndex: 2,
    explanation:
        'Vatican City is an independent city-state surrounded by Rome, functioning as the global headquarters of the Catholic Church.',
  ),

  // geography -> Difficulty.hard
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What is the deepest known oceanic trench on Earth, located in the western Pacific Ocean?',
    options: [
      'Puerto Rico Trench',
      'Java Trench',
      'Mariana Trench',
      'Peru-Chile Trench',
    ],
    correctIndex: 2,
    explanation:
        'The Mariana Trench reaches its lowest point at the Challenger Deep, descending nearly 11,000 meters.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What country possesses the longest coastline of any nation in the world due to its complex archipelagos and fjords?',
    options: ['Australia', 'Indonesia', 'Russia', 'Canada'],
    correctIndex: 3,
    explanation:
        'Canada is bordered by three oceans and features an extraordinarily jagged coastline spanning over 200,000 kilometers.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What strategic strait connects the Black Sea to the Sea of Marmara and separates European Turkey from Asian Turkey?',
    options: [
      'The Strait of Gibraltar',
      'The Bosphorus Strait',
      'The Strait of Malacca',
      'The Dardanelles',
    ],
    correctIndex: 1,
    explanation:
        'The Bosphorus is part of the Turkish Straits, serving as a critical global shipping choke point.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'Which landlocked South American country contains two capital cities: La Paz (administrative) and Sucre (constitutional)?',
    options: ['Paraguay', 'Bolivia', 'Ecuador', 'Uruguay'],
    correctIndex: 1,
    explanation:
        'Bolivia shares its seat of government between La Paz and Sucre under its constitutional setup.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What desert, stretching across parts of southern Mongolia and northern China, is classified as a cold desert?',
    options: [
      'The Patagonian Desert',
      'The Gobi Desert',
      'The Karakum Desert',
      'The Taklamakan Desert',
    ],
    correctIndex: 1,
    explanation:
        'The Gobi Desert experiences extreme temperature swings and frost rather than year-round tropical heat.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What is the name of the remote volcanic island group in the South Atlantic Ocean that is a British overseas territory and one of the most isolated human settlements?',
    options: [
      'Falkland Islands',
      'Tristan da Cunha',
      'South Georgia',
      'Ascension Island',
    ],
    correctIndex: 1,
    explanation:
        'Tristan da Cunha is an archipelago lying over 2,400 kilometers away from the nearest mainland (South Africa).',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'Which African river flows through the world\'s largest waterfall system by water volume, Victoria Falls?',
    options: [
      'The Nile River',
      'The Congo River',
      'The Zambezi River',
      'The Niger River',
    ],
    correctIndex: 2,
    explanation:
        'The Zambezi River forms the border between Zambia and Zimbabwe, dropping precipitously at Victoria Falls.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What country claims sovereignty over Greenland, making it an autonomous territory within its realm?',
    options: ['Norway', 'Denmark', 'Iceland', 'United Kingdom'],
    correctIndex: 1,
    explanation:
        'Greenland is an autonomous constituent country within the Kingdom of Denmark.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'What tectonic plate boundary type runs right down the middle of Iceland, causing intense volcanic and geothermal activity?',
    options: [
      'Convergent subduction zone',
      'Divergent boundary (Mid-Atlantic Ridge)',
      'Transform fault line',
      'Continental collision zone',
    ],
    correctIndex: 1,
    explanation:
        'Iceland sits astride the Mid-Atlantic Ridge where the North American and Eurasian plates pull apart.',
  ),
  const Question(
    topicId: 'geography',
    difficulty: Difficulty.hard,
    prompt:
        'Which Central Asian country has Astana as its capital, having previously renamed it Nur-Sultan for a brief period?',
    options: ['Uzbekistan', 'Turkmenistan', 'Kazakhstan', 'Kyrgyzstan'],
    correctIndex: 2,
    explanation:
        'Kazakhstan\'s capital has gone through multiple name changes, returning to Astana after serving as Nur-Sultan from 2019 to 2022.',
  ),
];

List<Question> questionsFor(String topicId, Difficulty difficulty) {
  final matches = allQuestions
      .where((q) => q.topicId == topicId && q.difficulty == difficulty)
      .toList();
  matches.shuffle();
  return matches;
}
