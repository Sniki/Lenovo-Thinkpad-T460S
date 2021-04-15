// Skylake Brightness Control

DefinitionBlock("", "SSDT", 2, "T460S", "PNLF", 0)
{
    External (_SB.PCI0.GFX0, DeviceObj)
    
    Scope(_SB.PCI0.GFX0)
    {
        Device(PNLF)
        {
            Name (_HID, EisaId ("APP0002"))
            Name (_CID, "backlight")
            //Skylake/KabyLake/KabyLake-R
            Name (_UID, 16)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }        
    }
}
