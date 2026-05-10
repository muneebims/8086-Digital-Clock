# 8086 Digital Clock using Assembly Language

## Project Overview
This project is a real-time Digital Clock developed using 8086 Assembly Language.  
The program retrieves system time using DOS interrupts and continuously displays hours, minutes, and seconds in HH:MM:SS format.

## Features
- Real-time clock display
- Uses DOS Interrupt 21h for system time
- Uses BIOS Interrupt 10h for screen handling
- Displays time in HH:MM:SS format
- Modular code using procedures
- Software-based delay mechanism

## Technologies Used
- 8086 Assembly Language
- EMU8086 / DOS Emulator
- DOS Interrupts
- BIOS Interrupts

## System Functions Used

### DOS Interrupts
- `INT 21h AH=09h` → Display string
- `INT 21h AH=02h` → Display character
- `INT 21h AH=2Ch` → Get system time

### BIOS Interrupts
- `INT 10h AH=00h` → Set video mode
- `INT 10h AH=02h` → Set cursor position

## Project Members
- Anas Khan (24BSSW040)
- Muhammad Muneeb Iqbal (24BSSW062)

## Instructor
Sir Sharique

## Working
1. Initialize data segment
2. Display project banner
3. Retrieve system time
4. Extract hours, minutes, and seconds
5. Convert numbers into ASCII
6. Display formatted time
7. Repeat continuously

## Output Format
```text
Time -> 12:45:30
```

## Future Improvements
- Add date display
- Add alarm functionality
- Improve delay accuracy
- Add colorful UI

## License
This project is for educational purposes.
