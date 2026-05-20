import tkinter as tk

window = tk.Tk()

window.title("FPGA ADAS Dashboard")

window.geometry("400x300")

label = tk.Label(
    window,
    text="FPGA ADAS Vision Accelerator",
    font=("Arial",16)
)

label.pack(pady=20)

status = tk.Label(
    window,
    text="System Running",
    fg="green",
    font=("Arial",14)
)

status.pack(pady=10)

window.mainloop()