---
title: COMMUNICATING
author: Doug Harris
date: 2-14-2021
---

## Help

This describes a particular style of discussing communications using 4 types of componentsthat can be specifically tailored to a job. They are

  Name|Number|Symbol|Input Behavior|Output Behavior
---|---|---|---|---
	Push|1|**H**|MOVE|WAIT
	Pipe|2|**E**|WAIT|WAIT
	Pull|3|**L**|WAIT|MOVE
	Pump|4|**P**|MOVE|MOVE

Each is easily represented by the last letter of its name.

##  The meaning of the behaviors is fairly straightforward

There is always an input peer and an Output Peer.

On Input MOVE means just read the data and WAIT means your peer will be writing it when ready

On Output MOVE means just write the data and WAIT means your peer will be reading when ready.

An alternative behavior for either Input or Output is PROMPT, which means ask if the way is clear bwfore you write or is there is data svailable before you read.

The **push** will always take something in, and your peer will read it when needed. It is like a storage device for output, which always has a place.

The **pipe** is totally passive, letting its peer write at any time, and can always be read. You should ask in either case if concerned about failure.

The **pull** should be written by the peer and read by you. Will it block if there is no data available, or perhaps send a notice to the peer that it needs data.

The **push** is a typical *Type **A** personality*, responsible for getting data fRom its input peer and giving it to the output peer.

Typically we write a long chain of these, and use dots to indicate which side is
responsible for the activity at that end. Thus the **Pipe**, being totally PASSIVE,
has no dots, each of the **Push** and the **Pull** has one dot at the appropriate
end, and the **Pump** has dots at both ends.
 
The **Pipe** is often seen in a storage devicce. Somebody write it some day, and somebody reads it later on. It is often seen as a cable, where there may be little delay between
the write and the read.

The **Pump** is a typical computer, commonly seen with a keyboard at one end and a display at the other. Some displays also have a touch screen, and thus act like a **Pipe**,
waiting for a human peer to touch the screen to provide input, and providing visual output
to the human.
