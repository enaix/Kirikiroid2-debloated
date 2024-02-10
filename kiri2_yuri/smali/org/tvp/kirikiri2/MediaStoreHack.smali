.class public Lorg/tvp/kirikiri2/MediaStoreHack;
.super Ljava/lang/Object;
.source "MediaStoreHack.java"


# static fields
.field private static final ALBUM_ART_URI:Ljava/lang/String; = "content://media/external/audio/albumart"

.field private static final ALBUM_PROJECTION:[Ljava/lang/String;

.field private static final temptrack_mp3:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, -0x40

    const/16 v6, 0x4d

    const/4 v5, -0x1

    const/16 v4, 0x33

    const/16 v3, 0x55

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 47
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "media_type"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lorg/tvp/kirikiri2/MediaStoreHack;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 204
    const/16 v0, 0xe16

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 205
    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v4, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    .line 206
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    aput-byte v6, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    .line 207
    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    .line 208
    const/16 v1, 0x18

    aput-byte v1, v0, v4

    const/16 v1, 0x37

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v6, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    .line 209
    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    aput-byte v1, v0, v6

    const/16 v1, 0x4e

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 210
    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v1, v0, v3

    const/16 v1, 0x59

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    aput-byte v6, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 211
    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    .line 212
    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    .line 213
    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x92

    .line 214
    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    .line 215
    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xa7

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0xab

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    .line 216
    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xb2

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xb8

    const/16 v2, -0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xb9

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0xba

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xbb

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, -0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    .line 217
    aput-byte v3, v0, v1

    const/16 v1, 0xc1

    const/16 v2, -0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xc3

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xc5

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xc6

    aput-byte v6, v0, v1

    const/16 v1, 0xc7

    aput-byte v5, v0, v1

    const/16 v1, 0xc8

    aput-byte v5, v0, v1

    const/16 v1, 0xc9

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    .line 218
    const/16 v2, -0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x40

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, -0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xd8

    const/16 v2, -0x23

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xda

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xdb

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xdc

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0xdd

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    .line 219
    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0xea

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0xec

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0xed

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xee

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    .line 220
    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, -0x16

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    aput-byte v6, v0, v1

    const/16 v1, 0xf9

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0xff

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x100

    .line 221
    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x101

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x102

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, -0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, -0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    .line 222
    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, -0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, -0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x11b

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x11c

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x11f

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    .line 223
    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x121

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, -0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x128

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x129

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x12a

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x12b

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x12c

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x12d

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x12e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x12f

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    .line 224
    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x131

    const/16 v2, -0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x132

    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, -0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x134

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x136

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x137

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x138

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x13b

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x13f

    const/16 v2, -0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x140

    .line 225
    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x144

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x146

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x147

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x148

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x149

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x14a

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x14b

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x14c

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x14d

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x14e

    const/16 v2, -0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x14f

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x150

    .line 226
    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x151

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x152

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x153

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x154

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x155

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x156

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x158

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x159

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x15a

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x15b

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x15c

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x15d

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x15e

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x15f

    const/16 v2, -0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x160

    .line 227
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x162

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x164

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x165

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x168

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x16b

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x16c

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x16e

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x16f

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x170

    .line 228
    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x172

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x173

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x174

    aput-byte v4, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x177

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x178

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x17a

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x17b

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x17c

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x17d

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x17f

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x180

    .line 229
    const/16 v2, -0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x182

    const/16 v2, -0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x185

    const/16 v2, -0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x186

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x187

    const/16 v2, -0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x188

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x18a

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x18b

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x193

    .line 230
    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x194

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x196

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x197

    const/16 v2, -0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x19e

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/16 v1, 0x1a2

    .line 231
    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x1a6

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x1aa

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x1ab

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x1af

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x1b0

    .line 232
    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b4

    aput-byte v4, v0, v1

    const/16 v1, 0x1b5

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x1b7

    aput-byte v4, v0, v1

    const/16 v1, 0x1b8

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x44b

    .line 273
    aput-byte v5, v0, v1

    const/16 v1, 0x44c

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x44d

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x44e

    aput-byte v7, v0, v1

    const/16 v1, 0x44f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x450

    .line 274
    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x455

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x456

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x457

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x45d

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x45e

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x45f

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x462

    .line 275
    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x463

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x464

    aput-byte v6, v0, v1

    const/16 v1, 0x465

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x466

    aput-byte v4, v0, v1

    const/16 v1, 0x467

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x468

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x469

    aput-byte v4, v0, v1

    const/16 v1, 0x46a

    aput-byte v3, v0, v1

    const/16 v1, 0x46b

    aput-byte v3, v0, v1

    const/16 v1, 0x46c

    aput-byte v3, v0, v1

    const/16 v1, 0x46d

    aput-byte v3, v0, v1

    const/16 v1, 0x46e

    aput-byte v3, v0, v1

    const/16 v1, 0x46f

    aput-byte v3, v0, v1

    const/16 v1, 0x470

    .line 276
    aput-byte v3, v0, v1

    const/16 v1, 0x471

    aput-byte v3, v0, v1

    const/16 v1, 0x472

    aput-byte v3, v0, v1

    const/16 v1, 0x473

    aput-byte v3, v0, v1

    const/16 v1, 0x474

    aput-byte v3, v0, v1

    const/16 v1, 0x475

    aput-byte v3, v0, v1

    const/16 v1, 0x476

    aput-byte v3, v0, v1

    const/16 v1, 0x477

    aput-byte v3, v0, v1

    const/16 v1, 0x478

    aput-byte v3, v0, v1

    const/16 v1, 0x479

    aput-byte v3, v0, v1

    const/16 v1, 0x47a

    aput-byte v3, v0, v1

    const/16 v1, 0x47b

    aput-byte v3, v0, v1

    const/16 v1, 0x47c

    aput-byte v3, v0, v1

    const/16 v1, 0x47d

    aput-byte v3, v0, v1

    const/16 v1, 0x47e

    aput-byte v3, v0, v1

    const/16 v1, 0x47f

    aput-byte v3, v0, v1

    const/16 v1, 0x480

    .line 277
    aput-byte v3, v0, v1

    const/16 v1, 0x481

    aput-byte v3, v0, v1

    const/16 v1, 0x482

    aput-byte v3, v0, v1

    const/16 v1, 0x483

    aput-byte v3, v0, v1

    const/16 v1, 0x484

    aput-byte v3, v0, v1

    const/16 v1, 0x485

    aput-byte v3, v0, v1

    const/16 v1, 0x486

    aput-byte v3, v0, v1

    const/16 v1, 0x487

    aput-byte v3, v0, v1

    const/16 v1, 0x488

    aput-byte v3, v0, v1

    const/16 v1, 0x489

    aput-byte v3, v0, v1

    const/16 v1, 0x48a

    aput-byte v3, v0, v1

    const/16 v1, 0x48b

    aput-byte v3, v0, v1

    const/16 v1, 0x48c

    aput-byte v3, v0, v1

    const/16 v1, 0x48d

    aput-byte v3, v0, v1

    const/16 v1, 0x48e

    aput-byte v3, v0, v1

    const/16 v1, 0x48f

    aput-byte v3, v0, v1

    const/16 v1, 0x490

    .line 278
    aput-byte v3, v0, v1

    const/16 v1, 0x491

    aput-byte v3, v0, v1

    const/16 v1, 0x492

    aput-byte v3, v0, v1

    const/16 v1, 0x493

    aput-byte v3, v0, v1

    const/16 v1, 0x494

    aput-byte v3, v0, v1

    const/16 v1, 0x495

    aput-byte v3, v0, v1

    const/16 v1, 0x496

    aput-byte v3, v0, v1

    const/16 v1, 0x497

    aput-byte v3, v0, v1

    const/16 v1, 0x498

    aput-byte v3, v0, v1

    const/16 v1, 0x499

    aput-byte v3, v0, v1

    const/16 v1, 0x49a

    aput-byte v3, v0, v1

    const/16 v1, 0x49b

    aput-byte v3, v0, v1

    const/16 v1, 0x49c

    aput-byte v3, v0, v1

    const/16 v1, 0x49d

    aput-byte v3, v0, v1

    const/16 v1, 0x49e

    aput-byte v3, v0, v1

    const/16 v1, 0x49f

    aput-byte v3, v0, v1

    const/16 v1, 0x4a0

    .line 279
    aput-byte v3, v0, v1

    const/16 v1, 0x4a1

    aput-byte v3, v0, v1

    const/16 v1, 0x4a2

    aput-byte v3, v0, v1

    const/16 v1, 0x4a3

    aput-byte v3, v0, v1

    const/16 v1, 0x4a4

    aput-byte v3, v0, v1

    const/16 v1, 0x4a5

    aput-byte v3, v0, v1

    const/16 v1, 0x4a6

    aput-byte v3, v0, v1

    const/16 v1, 0x4a7

    aput-byte v3, v0, v1

    const/16 v1, 0x4a8

    aput-byte v3, v0, v1

    const/16 v1, 0x4a9

    aput-byte v3, v0, v1

    const/16 v1, 0x4aa

    aput-byte v3, v0, v1

    const/16 v1, 0x4ab

    aput-byte v3, v0, v1

    const/16 v1, 0x4ac

    aput-byte v3, v0, v1

    const/16 v1, 0x4ad

    aput-byte v3, v0, v1

    const/16 v1, 0x4ae

    aput-byte v3, v0, v1

    const/16 v1, 0x4af

    aput-byte v3, v0, v1

    const/16 v1, 0x4b0

    .line 280
    aput-byte v3, v0, v1

    const/16 v1, 0x4b1

    aput-byte v3, v0, v1

    const/16 v1, 0x4b2

    aput-byte v3, v0, v1

    const/16 v1, 0x4b3

    aput-byte v3, v0, v1

    const/16 v1, 0x4b4

    aput-byte v3, v0, v1

    const/16 v1, 0x4b5

    aput-byte v3, v0, v1

    const/16 v1, 0x4b6

    aput-byte v3, v0, v1

    const/16 v1, 0x4b7

    aput-byte v3, v0, v1

    const/16 v1, 0x4b8

    aput-byte v3, v0, v1

    const/16 v1, 0x4b9

    aput-byte v3, v0, v1

    const/16 v1, 0x4ba

    aput-byte v3, v0, v1

    const/16 v1, 0x4bb

    aput-byte v3, v0, v1

    const/16 v1, 0x4bc

    aput-byte v3, v0, v1

    const/16 v1, 0x4bd

    aput-byte v3, v0, v1

    const/16 v1, 0x4be

    aput-byte v3, v0, v1

    const/16 v1, 0x4bf

    aput-byte v3, v0, v1

    const/16 v1, 0x4c0

    .line 281
    aput-byte v3, v0, v1

    const/16 v1, 0x4c1

    aput-byte v3, v0, v1

    const/16 v1, 0x4c2

    aput-byte v3, v0, v1

    const/16 v1, 0x4c3

    aput-byte v3, v0, v1

    const/16 v1, 0x4c4

    aput-byte v3, v0, v1

    const/16 v1, 0x4c5

    aput-byte v3, v0, v1

    const/16 v1, 0x4c6

    aput-byte v3, v0, v1

    const/16 v1, 0x4c7

    aput-byte v3, v0, v1

    const/16 v1, 0x4c8

    aput-byte v3, v0, v1

    const/16 v1, 0x4c9

    aput-byte v3, v0, v1

    const/16 v1, 0x4ca

    aput-byte v3, v0, v1

    const/16 v1, 0x4cb

    aput-byte v3, v0, v1

    const/16 v1, 0x4cc

    aput-byte v3, v0, v1

    const/16 v1, 0x4cd

    aput-byte v3, v0, v1

    const/16 v1, 0x4ce

    aput-byte v3, v0, v1

    const/16 v1, 0x4cf

    aput-byte v3, v0, v1

    const/16 v1, 0x4d0

    .line 282
    aput-byte v3, v0, v1

    const/16 v1, 0x4d1

    aput-byte v3, v0, v1

    const/16 v1, 0x4d2

    aput-byte v3, v0, v1

    const/16 v1, 0x4d3

    aput-byte v3, v0, v1

    const/16 v1, 0x4d4

    aput-byte v3, v0, v1

    const/16 v1, 0x4d5

    aput-byte v3, v0, v1

    const/16 v1, 0x4d6

    aput-byte v3, v0, v1

    const/16 v1, 0x4d7

    aput-byte v3, v0, v1

    const/16 v1, 0x4d8

    aput-byte v3, v0, v1

    const/16 v1, 0x4d9

    aput-byte v3, v0, v1

    const/16 v1, 0x4da

    aput-byte v3, v0, v1

    const/16 v1, 0x4db

    aput-byte v3, v0, v1

    const/16 v1, 0x4dc

    aput-byte v3, v0, v1

    const/16 v1, 0x4dd

    aput-byte v3, v0, v1

    const/16 v1, 0x4de

    aput-byte v3, v0, v1

    const/16 v1, 0x4df

    aput-byte v3, v0, v1

    const/16 v1, 0x4e0

    .line 283
    aput-byte v3, v0, v1

    const/16 v1, 0x4e1

    aput-byte v3, v0, v1

    const/16 v1, 0x4e2

    aput-byte v3, v0, v1

    const/16 v1, 0x4e3

    aput-byte v3, v0, v1

    const/16 v1, 0x4e4

    aput-byte v3, v0, v1

    const/16 v1, 0x4e5

    aput-byte v3, v0, v1

    const/16 v1, 0x4e6

    aput-byte v3, v0, v1

    const/16 v1, 0x4e7

    aput-byte v3, v0, v1

    const/16 v1, 0x4e8

    aput-byte v3, v0, v1

    const/16 v1, 0x4e9

    aput-byte v3, v0, v1

    const/16 v1, 0x4ea

    aput-byte v3, v0, v1

    const/16 v1, 0x4eb

    aput-byte v3, v0, v1

    const/16 v1, 0x4ec

    aput-byte v3, v0, v1

    const/16 v1, 0x4ed

    aput-byte v3, v0, v1

    const/16 v1, 0x4ee

    aput-byte v3, v0, v1

    const/16 v1, 0x4ef

    aput-byte v3, v0, v1

    const/16 v1, 0x4f0

    .line 284
    aput-byte v3, v0, v1

    const/16 v1, 0x4f1

    aput-byte v3, v0, v1

    const/16 v1, 0x4f2

    aput-byte v3, v0, v1

    const/16 v1, 0x4f3

    aput-byte v3, v0, v1

    const/16 v1, 0x4f4

    aput-byte v3, v0, v1

    const/16 v1, 0x4f5

    aput-byte v3, v0, v1

    const/16 v1, 0x4f6

    aput-byte v3, v0, v1

    const/16 v1, 0x4f7

    aput-byte v3, v0, v1

    const/16 v1, 0x4f8

    aput-byte v3, v0, v1

    const/16 v1, 0x4f9

    aput-byte v3, v0, v1

    const/16 v1, 0x4fa

    aput-byte v3, v0, v1

    const/16 v1, 0x4fb

    aput-byte v3, v0, v1

    const/16 v1, 0x4fc

    aput-byte v3, v0, v1

    const/16 v1, 0x4fd

    aput-byte v3, v0, v1

    const/16 v1, 0x4fe

    aput-byte v3, v0, v1

    const/16 v1, 0x4ff

    aput-byte v3, v0, v1

    const/16 v1, 0x500

    .line 285
    aput-byte v3, v0, v1

    const/16 v1, 0x501

    aput-byte v3, v0, v1

    const/16 v1, 0x502

    aput-byte v3, v0, v1

    const/16 v1, 0x503

    aput-byte v3, v0, v1

    const/16 v1, 0x504

    aput-byte v3, v0, v1

    const/16 v1, 0x505

    aput-byte v3, v0, v1

    const/16 v1, 0x506

    aput-byte v3, v0, v1

    const/16 v1, 0x507

    aput-byte v3, v0, v1

    const/16 v1, 0x508

    aput-byte v3, v0, v1

    const/16 v1, 0x509

    aput-byte v3, v0, v1

    const/16 v1, 0x50a

    aput-byte v3, v0, v1

    const/16 v1, 0x50b

    aput-byte v3, v0, v1

    const/16 v1, 0x50c

    aput-byte v3, v0, v1

    const/16 v1, 0x50d

    aput-byte v3, v0, v1

    const/16 v1, 0x50e

    aput-byte v3, v0, v1

    const/16 v1, 0x50f

    aput-byte v3, v0, v1

    const/16 v1, 0x510

    .line 286
    aput-byte v3, v0, v1

    const/16 v1, 0x511

    aput-byte v3, v0, v1

    const/16 v1, 0x512

    aput-byte v3, v0, v1

    const/16 v1, 0x513

    aput-byte v3, v0, v1

    const/16 v1, 0x514

    aput-byte v3, v0, v1

    const/16 v1, 0x515

    aput-byte v3, v0, v1

    const/16 v1, 0x516

    aput-byte v3, v0, v1

    const/16 v1, 0x517

    aput-byte v3, v0, v1

    const/16 v1, 0x518

    aput-byte v3, v0, v1

    const/16 v1, 0x519

    aput-byte v3, v0, v1

    const/16 v1, 0x51a

    aput-byte v3, v0, v1

    const/16 v1, 0x51b

    aput-byte v3, v0, v1

    const/16 v1, 0x51c

    aput-byte v3, v0, v1

    const/16 v1, 0x51d

    aput-byte v3, v0, v1

    const/16 v1, 0x51e

    aput-byte v3, v0, v1

    const/16 v1, 0x51f

    aput-byte v3, v0, v1

    const/16 v1, 0x520

    .line 287
    aput-byte v3, v0, v1

    const/16 v1, 0x521

    aput-byte v3, v0, v1

    const/16 v1, 0x522

    aput-byte v3, v0, v1

    const/16 v1, 0x523

    aput-byte v3, v0, v1

    const/16 v1, 0x524

    aput-byte v3, v0, v1

    const/16 v1, 0x525

    aput-byte v3, v0, v1

    const/16 v1, 0x526

    aput-byte v3, v0, v1

    const/16 v1, 0x527

    aput-byte v3, v0, v1

    const/16 v1, 0x528

    aput-byte v3, v0, v1

    const/16 v1, 0x529

    aput-byte v3, v0, v1

    const/16 v1, 0x52a

    aput-byte v3, v0, v1

    const/16 v1, 0x52b

    aput-byte v3, v0, v1

    const/16 v1, 0x52c

    aput-byte v3, v0, v1

    const/16 v1, 0x52d

    aput-byte v3, v0, v1

    const/16 v1, 0x52e

    aput-byte v3, v0, v1

    const/16 v1, 0x52f

    aput-byte v3, v0, v1

    const/16 v1, 0x530

    .line 288
    aput-byte v3, v0, v1

    const/16 v1, 0x531

    aput-byte v3, v0, v1

    const/16 v1, 0x532

    aput-byte v3, v0, v1

    const/16 v1, 0x533

    aput-byte v3, v0, v1

    const/16 v1, 0x534

    aput-byte v3, v0, v1

    const/16 v1, 0x535

    aput-byte v3, v0, v1

    const/16 v1, 0x536

    aput-byte v3, v0, v1

    const/16 v1, 0x537

    aput-byte v3, v0, v1

    const/16 v1, 0x538

    aput-byte v3, v0, v1

    const/16 v1, 0x539

    aput-byte v3, v0, v1

    const/16 v1, 0x53a

    aput-byte v3, v0, v1

    const/16 v1, 0x53b

    aput-byte v3, v0, v1

    const/16 v1, 0x53c

    aput-byte v3, v0, v1

    const/16 v1, 0x53d

    aput-byte v3, v0, v1

    const/16 v1, 0x53e

    aput-byte v3, v0, v1

    const/16 v1, 0x53f

    aput-byte v3, v0, v1

    const/16 v1, 0x540

    .line 289
    aput-byte v3, v0, v1

    const/16 v1, 0x541

    aput-byte v3, v0, v1

    const/16 v1, 0x542

    aput-byte v3, v0, v1

    const/16 v1, 0x543

    aput-byte v3, v0, v1

    const/16 v1, 0x544

    aput-byte v3, v0, v1

    const/16 v1, 0x545

    aput-byte v3, v0, v1

    const/16 v1, 0x546

    aput-byte v3, v0, v1

    const/16 v1, 0x547

    aput-byte v3, v0, v1

    const/16 v1, 0x548

    aput-byte v3, v0, v1

    const/16 v1, 0x549

    aput-byte v3, v0, v1

    const/16 v1, 0x54a

    aput-byte v3, v0, v1

    const/16 v1, 0x54b

    aput-byte v3, v0, v1

    const/16 v1, 0x54c

    aput-byte v3, v0, v1

    const/16 v1, 0x54d

    aput-byte v3, v0, v1

    const/16 v1, 0x54e

    aput-byte v3, v0, v1

    const/16 v1, 0x54f

    aput-byte v3, v0, v1

    const/16 v1, 0x550

    .line 290
    aput-byte v3, v0, v1

    const/16 v1, 0x551

    aput-byte v3, v0, v1

    const/16 v1, 0x552

    aput-byte v3, v0, v1

    const/16 v1, 0x553

    aput-byte v3, v0, v1

    const/16 v1, 0x554

    aput-byte v3, v0, v1

    const/16 v1, 0x555

    aput-byte v3, v0, v1

    const/16 v1, 0x556

    aput-byte v3, v0, v1

    const/16 v1, 0x557

    aput-byte v3, v0, v1

    const/16 v1, 0x558

    aput-byte v3, v0, v1

    const/16 v1, 0x559

    aput-byte v3, v0, v1

    const/16 v1, 0x55a

    aput-byte v3, v0, v1

    const/16 v1, 0x55b

    aput-byte v3, v0, v1

    const/16 v1, 0x55c

    aput-byte v3, v0, v1

    const/16 v1, 0x55d

    aput-byte v3, v0, v1

    const/16 v1, 0x55e

    aput-byte v3, v0, v1

    const/16 v1, 0x55f

    aput-byte v3, v0, v1

    const/16 v1, 0x560

    .line 291
    aput-byte v3, v0, v1

    const/16 v1, 0x561

    aput-byte v3, v0, v1

    const/16 v1, 0x562

    aput-byte v3, v0, v1

    const/16 v1, 0x563

    aput-byte v3, v0, v1

    const/16 v1, 0x564

    aput-byte v3, v0, v1

    const/16 v1, 0x565

    aput-byte v3, v0, v1

    const/16 v1, 0x566

    aput-byte v3, v0, v1

    const/16 v1, 0x567

    aput-byte v3, v0, v1

    const/16 v1, 0x568

    aput-byte v3, v0, v1

    const/16 v1, 0x569

    aput-byte v3, v0, v1

    const/16 v1, 0x56a

    aput-byte v3, v0, v1

    const/16 v1, 0x56b

    aput-byte v3, v0, v1

    const/16 v1, 0x56c

    aput-byte v3, v0, v1

    const/16 v1, 0x56d

    aput-byte v3, v0, v1

    const/16 v1, 0x56e

    aput-byte v3, v0, v1

    const/16 v1, 0x56f

    aput-byte v3, v0, v1

    const/16 v1, 0x570

    .line 292
    aput-byte v3, v0, v1

    const/16 v1, 0x571

    aput-byte v3, v0, v1

    const/16 v1, 0x572

    aput-byte v3, v0, v1

    const/16 v1, 0x573

    aput-byte v3, v0, v1

    const/16 v1, 0x574

    aput-byte v3, v0, v1

    const/16 v1, 0x575

    aput-byte v3, v0, v1

    const/16 v1, 0x576

    aput-byte v3, v0, v1

    const/16 v1, 0x577

    aput-byte v3, v0, v1

    const/16 v1, 0x578

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x579

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x57a

    aput-byte v6, v0, v1

    const/16 v1, 0x57b

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x57c

    aput-byte v4, v0, v1

    const/16 v1, 0x57d

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x57e

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x57f

    aput-byte v4, v0, v1

    const/16 v1, 0x580

    .line 293
    aput-byte v3, v0, v1

    const/16 v1, 0x581

    aput-byte v3, v0, v1

    const/16 v1, 0x582

    aput-byte v3, v0, v1

    const/16 v1, 0x583

    aput-byte v3, v0, v1

    const/16 v1, 0x584

    aput-byte v3, v0, v1

    const/16 v1, 0x585

    aput-byte v3, v0, v1

    const/16 v1, 0x586

    aput-byte v3, v0, v1

    const/16 v1, 0x587

    aput-byte v3, v0, v1

    const/16 v1, 0x588

    aput-byte v3, v0, v1

    const/16 v1, 0x589

    aput-byte v3, v0, v1

    const/16 v1, 0x58a

    aput-byte v3, v0, v1

    const/16 v1, 0x58b

    aput-byte v3, v0, v1

    const/16 v1, 0x58c

    aput-byte v3, v0, v1

    const/16 v1, 0x58d

    aput-byte v3, v0, v1

    const/16 v1, 0x58e

    aput-byte v3, v0, v1

    const/16 v1, 0x58f

    aput-byte v3, v0, v1

    const/16 v1, 0x590

    .line 294
    aput-byte v3, v0, v1

    const/16 v1, 0x591

    aput-byte v3, v0, v1

    const/16 v1, 0x592

    aput-byte v3, v0, v1

    const/16 v1, 0x593    # 2.0E-42f

    aput-byte v3, v0, v1

    const/16 v1, 0x594

    aput-byte v3, v0, v1

    const/16 v1, 0x595

    aput-byte v3, v0, v1

    const/16 v1, 0x596

    aput-byte v3, v0, v1

    const/16 v1, 0x597

    aput-byte v3, v0, v1

    const/16 v1, 0x598

    aput-byte v3, v0, v1

    const/16 v1, 0x599

    aput-byte v3, v0, v1

    const/16 v1, 0x59a

    aput-byte v3, v0, v1

    const/16 v1, 0x59b

    aput-byte v3, v0, v1

    const/16 v1, 0x59c

    aput-byte v3, v0, v1

    const/16 v1, 0x59d

    aput-byte v3, v0, v1

    const/16 v1, 0x59e

    aput-byte v3, v0, v1

    const/16 v1, 0x59f

    aput-byte v3, v0, v1

    const/16 v1, 0x5a0

    .line 295
    aput-byte v3, v0, v1

    const/16 v1, 0x5a1

    aput-byte v3, v0, v1

    const/16 v1, 0x5a2

    aput-byte v3, v0, v1

    const/16 v1, 0x5a3

    aput-byte v3, v0, v1

    const/16 v1, 0x5a4

    aput-byte v3, v0, v1

    const/16 v1, 0x5a5

    aput-byte v3, v0, v1

    const/16 v1, 0x5a6

    aput-byte v3, v0, v1

    const/16 v1, 0x5a7

    aput-byte v3, v0, v1

    const/16 v1, 0x5a8

    aput-byte v3, v0, v1

    const/16 v1, 0x5a9

    aput-byte v3, v0, v1

    const/16 v1, 0x5aa

    aput-byte v3, v0, v1

    const/16 v1, 0x5ab

    aput-byte v3, v0, v1

    const/16 v1, 0x5ac

    aput-byte v3, v0, v1

    const/16 v1, 0x5ad

    aput-byte v3, v0, v1

    const/16 v1, 0x5ae

    aput-byte v3, v0, v1

    const/16 v1, 0x5af

    aput-byte v3, v0, v1

    const/16 v1, 0x5b0

    .line 296
    aput-byte v3, v0, v1

    const/16 v1, 0x5b1

    aput-byte v3, v0, v1

    const/16 v1, 0x5b2

    aput-byte v3, v0, v1

    const/16 v1, 0x5b3

    aput-byte v3, v0, v1

    const/16 v1, 0x5b4

    aput-byte v3, v0, v1

    const/16 v1, 0x5b5

    aput-byte v3, v0, v1

    const/16 v1, 0x5b6

    aput-byte v3, v0, v1

    const/16 v1, 0x5b7

    aput-byte v3, v0, v1

    const/16 v1, 0x5b8

    aput-byte v3, v0, v1

    const/16 v1, 0x5b9

    aput-byte v3, v0, v1

    const/16 v1, 0x5ba

    aput-byte v3, v0, v1

    const/16 v1, 0x5bb

    aput-byte v3, v0, v1

    const/16 v1, 0x5bc

    aput-byte v3, v0, v1

    const/16 v1, 0x5bd

    aput-byte v3, v0, v1

    const/16 v1, 0x5be

    aput-byte v3, v0, v1

    const/16 v1, 0x5bf

    aput-byte v3, v0, v1

    const/16 v1, 0x5c0

    .line 297
    aput-byte v3, v0, v1

    const/16 v1, 0x5c1

    aput-byte v3, v0, v1

    const/16 v1, 0x5c2

    aput-byte v3, v0, v1

    const/16 v1, 0x5c3

    aput-byte v3, v0, v1

    const/16 v1, 0x5c4

    aput-byte v3, v0, v1

    const/16 v1, 0x5c5

    aput-byte v3, v0, v1

    const/16 v1, 0x5c6

    aput-byte v3, v0, v1

    const/16 v1, 0x5c7

    aput-byte v3, v0, v1

    const/16 v1, 0x5c8

    aput-byte v3, v0, v1

    const/16 v1, 0x5c9

    aput-byte v3, v0, v1

    const/16 v1, 0x5ca

    aput-byte v3, v0, v1

    const/16 v1, 0x5cb

    aput-byte v3, v0, v1

    const/16 v1, 0x5cc

    aput-byte v3, v0, v1

    const/16 v1, 0x5cd

    aput-byte v3, v0, v1

    const/16 v1, 0x5ce

    aput-byte v3, v0, v1

    const/16 v1, 0x5cf

    aput-byte v3, v0, v1

    const/16 v1, 0x5d0

    .line 298
    aput-byte v3, v0, v1

    const/16 v1, 0x5d1

    aput-byte v3, v0, v1

    const/16 v1, 0x5d2

    aput-byte v3, v0, v1

    const/16 v1, 0x5d3

    aput-byte v3, v0, v1

    const/16 v1, 0x5d4

    aput-byte v3, v0, v1

    const/16 v1, 0x5d5

    aput-byte v3, v0, v1

    const/16 v1, 0x5d6

    aput-byte v3, v0, v1

    const/16 v1, 0x5d7

    aput-byte v3, v0, v1

    const/16 v1, 0x5d8

    aput-byte v3, v0, v1

    const/16 v1, 0x5d9

    aput-byte v3, v0, v1

    const/16 v1, 0x5da

    aput-byte v3, v0, v1

    const/16 v1, 0x5db

    aput-byte v3, v0, v1

    const/16 v1, 0x5dc

    aput-byte v3, v0, v1

    const/16 v1, 0x5dd

    aput-byte v3, v0, v1

    const/16 v1, 0x5de

    aput-byte v3, v0, v1

    const/16 v1, 0x5df

    aput-byte v3, v0, v1

    const/16 v1, 0x5e0

    .line 299
    aput-byte v3, v0, v1

    const/16 v1, 0x5e1

    aput-byte v3, v0, v1

    const/16 v1, 0x5e2

    aput-byte v3, v0, v1

    const/16 v1, 0x5e3

    aput-byte v3, v0, v1

    const/16 v1, 0x5e4

    aput-byte v3, v0, v1

    const/16 v1, 0x5e5

    aput-byte v3, v0, v1

    const/16 v1, 0x5e6

    aput-byte v3, v0, v1

    const/16 v1, 0x5e7

    aput-byte v3, v0, v1

    const/16 v1, 0x5e8

    aput-byte v3, v0, v1

    const/16 v1, 0x5e9

    aput-byte v3, v0, v1

    const/16 v1, 0x5ea

    aput-byte v3, v0, v1

    const/16 v1, 0x5eb

    aput-byte v3, v0, v1

    const/16 v1, 0x5ec

    aput-byte v5, v0, v1

    const/16 v1, 0x5ed

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x5ee

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x5ef

    aput-byte v7, v0, v1

    const/16 v1, 0x5f0

    .line 300
    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x5f1

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x5f2

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x5f3

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x5f4

    aput-byte v7, v0, v1

    const/16 v1, 0x5f6

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x5f7

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x5fe

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x5ff

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x603

    .line 301
    aput-byte v3, v0, v1

    const/16 v1, 0x604

    aput-byte v3, v0, v1

    const/16 v1, 0x605

    aput-byte v3, v0, v1

    const/16 v1, 0x606

    aput-byte v3, v0, v1

    const/16 v1, 0x607

    aput-byte v3, v0, v1

    const/16 v1, 0x608

    aput-byte v3, v0, v1

    const/16 v1, 0x609

    aput-byte v3, v0, v1

    const/16 v1, 0x60a

    aput-byte v3, v0, v1

    const/16 v1, 0x60b

    aput-byte v3, v0, v1

    const/16 v1, 0x60c

    aput-byte v3, v0, v1

    const/16 v1, 0x60d

    aput-byte v3, v0, v1

    const/16 v1, 0x60e

    aput-byte v3, v0, v1

    const/16 v1, 0x60f

    aput-byte v3, v0, v1

    const/16 v1, 0x610

    .line 302
    aput-byte v3, v0, v1

    const/16 v1, 0x611

    aput-byte v3, v0, v1

    const/16 v1, 0x612

    aput-byte v3, v0, v1

    const/16 v1, 0x613

    aput-byte v3, v0, v1

    const/16 v1, 0x614

    aput-byte v3, v0, v1

    const/16 v1, 0x615

    aput-byte v3, v0, v1

    const/16 v1, 0x616

    aput-byte v3, v0, v1

    const/16 v1, 0x617

    aput-byte v3, v0, v1

    const/16 v1, 0x618

    aput-byte v3, v0, v1

    const/16 v1, 0x619

    aput-byte v3, v0, v1

    const/16 v1, 0x61a

    aput-byte v3, v0, v1

    const/16 v1, 0x61b

    aput-byte v3, v0, v1

    const/16 v1, 0x61c

    aput-byte v3, v0, v1

    const/16 v1, 0x61d

    aput-byte v3, v0, v1

    const/16 v1, 0x61e

    aput-byte v3, v0, v1

    const/16 v1, 0x61f

    aput-byte v3, v0, v1

    const/16 v1, 0x620

    .line 303
    aput-byte v3, v0, v1

    const/16 v1, 0x621

    aput-byte v3, v0, v1

    const/16 v1, 0x622

    aput-byte v3, v0, v1

    const/16 v1, 0x623

    aput-byte v3, v0, v1

    const/16 v1, 0x624

    aput-byte v3, v0, v1

    const/16 v1, 0x625

    aput-byte v3, v0, v1

    const/16 v1, 0x626

    aput-byte v3, v0, v1

    const/16 v1, 0x627

    aput-byte v3, v0, v1

    const/16 v1, 0x628

    aput-byte v3, v0, v1

    const/16 v1, 0x629

    aput-byte v3, v0, v1

    const/16 v1, 0x62a

    aput-byte v3, v0, v1

    const/16 v1, 0x62b

    aput-byte v3, v0, v1

    const/16 v1, 0x62c

    aput-byte v3, v0, v1

    const/16 v1, 0x62d

    aput-byte v3, v0, v1

    const/16 v1, 0x62e

    aput-byte v3, v0, v1

    const/16 v1, 0x62f

    aput-byte v3, v0, v1

    const/16 v1, 0x630

    .line 304
    aput-byte v3, v0, v1

    const/16 v1, 0x631

    aput-byte v3, v0, v1

    const/16 v1, 0x632

    aput-byte v3, v0, v1

    const/16 v1, 0x633

    aput-byte v3, v0, v1

    const/16 v1, 0x634

    aput-byte v3, v0, v1

    const/16 v1, 0x635

    aput-byte v3, v0, v1

    const/16 v1, 0x636

    aput-byte v3, v0, v1

    const/16 v1, 0x637

    aput-byte v3, v0, v1

    const/16 v1, 0x638

    aput-byte v3, v0, v1

    const/16 v1, 0x639

    aput-byte v3, v0, v1

    const/16 v1, 0x63a

    aput-byte v3, v0, v1

    const/16 v1, 0x63b

    aput-byte v3, v0, v1

    const/16 v1, 0x63c

    aput-byte v3, v0, v1

    const/16 v1, 0x63d

    aput-byte v3, v0, v1

    const/16 v1, 0x63e

    aput-byte v3, v0, v1

    const/16 v1, 0x63f

    aput-byte v3, v0, v1

    const/16 v1, 0x640

    .line 305
    aput-byte v3, v0, v1

    const/16 v1, 0x641

    aput-byte v3, v0, v1

    const/16 v1, 0x642

    aput-byte v3, v0, v1

    const/16 v1, 0x643

    aput-byte v3, v0, v1

    const/16 v1, 0x644

    aput-byte v3, v0, v1

    const/16 v1, 0x645

    aput-byte v3, v0, v1

    const/16 v1, 0x646

    aput-byte v3, v0, v1

    const/16 v1, 0x647

    aput-byte v3, v0, v1

    const/16 v1, 0x648

    aput-byte v3, v0, v1

    const/16 v1, 0x649

    aput-byte v3, v0, v1

    const/16 v1, 0x64a

    aput-byte v3, v0, v1

    const/16 v1, 0x64b

    aput-byte v3, v0, v1

    const/16 v1, 0x64c

    aput-byte v3, v0, v1

    const/16 v1, 0x64d

    aput-byte v3, v0, v1

    const/16 v1, 0x64e

    aput-byte v3, v0, v1

    const/16 v1, 0x64f

    aput-byte v3, v0, v1

    const/16 v1, 0x650

    .line 306
    aput-byte v3, v0, v1

    const/16 v1, 0x651

    aput-byte v3, v0, v1

    const/16 v1, 0x652

    aput-byte v3, v0, v1

    const/16 v1, 0x653

    aput-byte v3, v0, v1

    const/16 v1, 0x654

    aput-byte v3, v0, v1

    const/16 v1, 0x655

    aput-byte v3, v0, v1

    const/16 v1, 0x656

    aput-byte v3, v0, v1

    const/16 v1, 0x657

    aput-byte v3, v0, v1

    const/16 v1, 0x658

    aput-byte v3, v0, v1

    const/16 v1, 0x659

    aput-byte v3, v0, v1

    const/16 v1, 0x65a

    aput-byte v3, v0, v1

    const/16 v1, 0x65b

    aput-byte v3, v0, v1

    const/16 v1, 0x65c

    aput-byte v3, v0, v1

    const/16 v1, 0x65d

    aput-byte v3, v0, v1

    const/16 v1, 0x65e

    aput-byte v3, v0, v1

    const/16 v1, 0x65f

    aput-byte v3, v0, v1

    const/16 v1, 0x660

    .line 307
    aput-byte v3, v0, v1

    const/16 v1, 0x661

    aput-byte v3, v0, v1

    const/16 v1, 0x662

    aput-byte v3, v0, v1

    const/16 v1, 0x663

    aput-byte v3, v0, v1

    const/16 v1, 0x664

    aput-byte v3, v0, v1

    const/16 v1, 0x665

    aput-byte v3, v0, v1

    const/16 v1, 0x666

    aput-byte v3, v0, v1

    const/16 v1, 0x667

    aput-byte v3, v0, v1

    const/16 v1, 0x668

    aput-byte v3, v0, v1

    const/16 v1, 0x669

    aput-byte v3, v0, v1

    const/16 v1, 0x66a

    aput-byte v3, v0, v1

    const/16 v1, 0x66b

    aput-byte v3, v0, v1

    const/16 v1, 0x66c

    aput-byte v3, v0, v1

    const/16 v1, 0x66d

    aput-byte v3, v0, v1

    const/16 v1, 0x66e

    aput-byte v3, v0, v1

    const/16 v1, 0x66f

    aput-byte v3, v0, v1

    const/16 v1, 0x670

    .line 308
    aput-byte v3, v0, v1

    const/16 v1, 0x671

    aput-byte v3, v0, v1

    const/16 v1, 0x672

    aput-byte v3, v0, v1

    const/16 v1, 0x673

    aput-byte v3, v0, v1

    const/16 v1, 0x674

    aput-byte v3, v0, v1

    const/16 v1, 0x675

    aput-byte v3, v0, v1

    const/16 v1, 0x676

    aput-byte v3, v0, v1

    const/16 v1, 0x677

    aput-byte v3, v0, v1

    const/16 v1, 0x678

    aput-byte v3, v0, v1

    const/16 v1, 0x679

    aput-byte v3, v0, v1

    const/16 v1, 0x67a

    aput-byte v3, v0, v1

    const/16 v1, 0x67b

    aput-byte v3, v0, v1

    const/16 v1, 0x67c

    aput-byte v3, v0, v1

    const/16 v1, 0x67d

    aput-byte v3, v0, v1

    const/16 v1, 0x67e

    aput-byte v3, v0, v1

    const/16 v1, 0x67f

    aput-byte v3, v0, v1

    const/16 v1, 0x680

    .line 309
    aput-byte v3, v0, v1

    const/16 v1, 0x681

    aput-byte v3, v0, v1

    const/16 v1, 0x682

    aput-byte v3, v0, v1

    const/16 v1, 0x683

    aput-byte v3, v0, v1

    const/16 v1, 0x684

    aput-byte v3, v0, v1

    const/16 v1, 0x685

    aput-byte v3, v0, v1

    const/16 v1, 0x686

    aput-byte v3, v0, v1

    const/16 v1, 0x687

    aput-byte v3, v0, v1

    const/16 v1, 0x688

    aput-byte v3, v0, v1

    const/16 v1, 0x689

    aput-byte v3, v0, v1

    const/16 v1, 0x68a

    aput-byte v3, v0, v1

    const/16 v1, 0x68b

    aput-byte v3, v0, v1

    const/16 v1, 0x68c

    aput-byte v3, v0, v1

    const/16 v1, 0x68d

    aput-byte v3, v0, v1

    const/16 v1, 0x68e

    aput-byte v3, v0, v1

    const/16 v1, 0x68f

    aput-byte v3, v0, v1

    const/16 v1, 0x690

    .line 310
    aput-byte v3, v0, v1

    const/16 v1, 0x691

    aput-byte v3, v0, v1

    const/16 v1, 0x692

    aput-byte v3, v0, v1

    const/16 v1, 0x693

    aput-byte v3, v0, v1

    const/16 v1, 0x694

    aput-byte v3, v0, v1

    const/16 v1, 0x695

    aput-byte v3, v0, v1

    const/16 v1, 0x696

    aput-byte v3, v0, v1

    const/16 v1, 0x697

    aput-byte v3, v0, v1

    const/16 v1, 0x698

    aput-byte v3, v0, v1

    const/16 v1, 0x699

    aput-byte v3, v0, v1

    const/16 v1, 0x69a

    aput-byte v3, v0, v1

    const/16 v1, 0x69b

    aput-byte v3, v0, v1

    const/16 v1, 0x69c

    aput-byte v3, v0, v1

    const/16 v1, 0x69d

    aput-byte v3, v0, v1

    const/16 v1, 0x69e

    aput-byte v3, v0, v1

    const/16 v1, 0x69f

    aput-byte v3, v0, v1

    const/16 v1, 0x6a0

    .line 311
    aput-byte v3, v0, v1

    const/16 v1, 0x6a1

    aput-byte v3, v0, v1

    const/16 v1, 0x6a2

    aput-byte v3, v0, v1

    const/16 v1, 0x6a3

    aput-byte v3, v0, v1

    const/16 v1, 0x6a4

    aput-byte v3, v0, v1

    const/16 v1, 0x6a5

    aput-byte v3, v0, v1

    const/16 v1, 0x6a6

    aput-byte v3, v0, v1

    const/16 v1, 0x6a7

    aput-byte v3, v0, v1

    const/16 v1, 0x6a8

    aput-byte v3, v0, v1

    const/16 v1, 0x6a9

    aput-byte v3, v0, v1

    const/16 v1, 0x6aa

    aput-byte v3, v0, v1

    const/16 v1, 0x6ab

    aput-byte v3, v0, v1

    const/16 v1, 0x6ac

    aput-byte v3, v0, v1

    const/16 v1, 0x6ad

    aput-byte v3, v0, v1

    const/16 v1, 0x6ae

    aput-byte v3, v0, v1

    const/16 v1, 0x6af

    aput-byte v3, v0, v1

    const/16 v1, 0x6b0

    .line 312
    aput-byte v3, v0, v1

    const/16 v1, 0x6b1

    aput-byte v3, v0, v1

    const/16 v1, 0x6b2

    aput-byte v3, v0, v1

    const/16 v1, 0x6b3

    aput-byte v3, v0, v1

    const/16 v1, 0x6b4

    aput-byte v3, v0, v1

    const/16 v1, 0x6b5

    aput-byte v3, v0, v1

    const/16 v1, 0x6b6

    aput-byte v3, v0, v1

    const/16 v1, 0x6b7

    aput-byte v3, v0, v1

    const/16 v1, 0x6b8

    aput-byte v3, v0, v1

    const/16 v1, 0x6b9

    aput-byte v3, v0, v1

    const/16 v1, 0x6ba

    aput-byte v3, v0, v1

    const/16 v1, 0x6bb

    aput-byte v3, v0, v1

    const/16 v1, 0x6bc

    aput-byte v3, v0, v1

    const/16 v1, 0x6bd

    aput-byte v3, v0, v1

    const/16 v1, 0x6be

    aput-byte v3, v0, v1

    const/16 v1, 0x6bf

    aput-byte v3, v0, v1

    const/16 v1, 0x6c0

    .line 313
    aput-byte v3, v0, v1

    const/16 v1, 0x6c1

    aput-byte v3, v0, v1

    const/16 v1, 0x6c2

    aput-byte v3, v0, v1

    const/16 v1, 0x6c3

    aput-byte v3, v0, v1

    const/16 v1, 0x6c4

    aput-byte v3, v0, v1

    const/16 v1, 0x6c5

    aput-byte v3, v0, v1

    const/16 v1, 0x6c6

    aput-byte v3, v0, v1

    const/16 v1, 0x6c7

    aput-byte v3, v0, v1

    const/16 v1, 0x6c8

    aput-byte v3, v0, v1

    const/16 v1, 0x6c9

    aput-byte v3, v0, v1

    const/16 v1, 0x6ca

    aput-byte v3, v0, v1

    const/16 v1, 0x6cb

    aput-byte v3, v0, v1

    const/16 v1, 0x6cc

    aput-byte v3, v0, v1

    const/16 v1, 0x6cd

    aput-byte v3, v0, v1

    const/16 v1, 0x6ce

    aput-byte v3, v0, v1

    const/16 v1, 0x6cf

    aput-byte v3, v0, v1

    const/16 v1, 0x6d0

    .line 314
    aput-byte v3, v0, v1

    const/16 v1, 0x6d1

    aput-byte v3, v0, v1

    const/16 v1, 0x6d2

    aput-byte v3, v0, v1

    const/16 v1, 0x6d3

    aput-byte v3, v0, v1

    const/16 v1, 0x6d4

    aput-byte v3, v0, v1

    const/16 v1, 0x6d5

    aput-byte v3, v0, v1

    const/16 v1, 0x6d6

    aput-byte v3, v0, v1

    const/16 v1, 0x6d7

    aput-byte v3, v0, v1

    const/16 v1, 0x6d8

    aput-byte v3, v0, v1

    const/16 v1, 0x6d9

    aput-byte v3, v0, v1

    const/16 v1, 0x6da

    aput-byte v3, v0, v1

    const/16 v1, 0x6db

    aput-byte v3, v0, v1

    const/16 v1, 0x6dc

    aput-byte v3, v0, v1

    const/16 v1, 0x6dd

    aput-byte v3, v0, v1

    const/16 v1, 0x6de

    aput-byte v3, v0, v1

    const/16 v1, 0x6df

    aput-byte v3, v0, v1

    const/16 v1, 0x6e0

    .line 315
    aput-byte v3, v0, v1

    const/16 v1, 0x6e1

    aput-byte v3, v0, v1

    const/16 v1, 0x6e2

    aput-byte v3, v0, v1

    const/16 v1, 0x6e3

    aput-byte v3, v0, v1

    const/16 v1, 0x6e4

    aput-byte v3, v0, v1

    const/16 v1, 0x6e5

    aput-byte v3, v0, v1

    const/16 v1, 0x6e6

    aput-byte v3, v0, v1

    const/16 v1, 0x6e7

    aput-byte v3, v0, v1

    const/16 v1, 0x6e8

    aput-byte v3, v0, v1

    const/16 v1, 0x6e9

    aput-byte v3, v0, v1

    const/16 v1, 0x6ea

    aput-byte v3, v0, v1

    const/16 v1, 0x6eb

    aput-byte v3, v0, v1

    const/16 v1, 0x6ec

    aput-byte v3, v0, v1

    const/16 v1, 0x6ed

    aput-byte v3, v0, v1

    const/16 v1, 0x6ee

    aput-byte v3, v0, v1

    const/16 v1, 0x6ef

    aput-byte v3, v0, v1

    const/16 v1, 0x6f0

    .line 316
    aput-byte v3, v0, v1

    const/16 v1, 0x6f1

    aput-byte v3, v0, v1

    const/16 v1, 0x6f2

    aput-byte v3, v0, v1

    const/16 v1, 0x6f3

    aput-byte v3, v0, v1

    const/16 v1, 0x6f4

    aput-byte v3, v0, v1

    const/16 v1, 0x6f5

    aput-byte v3, v0, v1

    const/16 v1, 0x6f6

    aput-byte v3, v0, v1

    const/16 v1, 0x6f7

    aput-byte v3, v0, v1

    const/16 v1, 0x6f8

    aput-byte v3, v0, v1

    const/16 v1, 0x6f9

    aput-byte v3, v0, v1

    const/16 v1, 0x6fa

    aput-byte v3, v0, v1

    const/16 v1, 0x6fb

    aput-byte v3, v0, v1

    const/16 v1, 0x6fc

    aput-byte v3, v0, v1

    const/16 v1, 0x6fd

    aput-byte v3, v0, v1

    const/16 v1, 0x6fe

    aput-byte v3, v0, v1

    const/16 v1, 0x6ff

    aput-byte v3, v0, v1

    const/16 v1, 0x700

    .line 317
    aput-byte v3, v0, v1

    const/16 v1, 0x701

    aput-byte v3, v0, v1

    const/16 v1, 0x702

    aput-byte v3, v0, v1

    const/16 v1, 0x703

    aput-byte v3, v0, v1

    const/16 v1, 0x704

    aput-byte v3, v0, v1

    const/16 v1, 0x705

    aput-byte v3, v0, v1

    const/16 v1, 0x706

    aput-byte v3, v0, v1

    const/16 v1, 0x707

    aput-byte v3, v0, v1

    const/16 v1, 0x708

    aput-byte v3, v0, v1

    const/16 v1, 0x709

    aput-byte v3, v0, v1

    const/16 v1, 0x70a

    aput-byte v3, v0, v1

    const/16 v1, 0x70b

    aput-byte v3, v0, v1

    const/16 v1, 0x70c

    aput-byte v3, v0, v1

    const/16 v1, 0x70d

    aput-byte v3, v0, v1

    const/16 v1, 0x70e

    aput-byte v3, v0, v1

    const/16 v1, 0x70f

    aput-byte v3, v0, v1

    const/16 v1, 0x710

    .line 318
    aput-byte v3, v0, v1

    const/16 v1, 0x711

    aput-byte v3, v0, v1

    const/16 v1, 0x712

    aput-byte v3, v0, v1

    const/16 v1, 0x713

    aput-byte v3, v0, v1

    const/16 v1, 0x714

    aput-byte v3, v0, v1

    const/16 v1, 0x715

    aput-byte v3, v0, v1

    const/16 v1, 0x716

    aput-byte v3, v0, v1

    const/16 v1, 0x717

    aput-byte v3, v0, v1

    const/16 v1, 0x718

    aput-byte v3, v0, v1

    const/16 v1, 0x719

    aput-byte v3, v0, v1

    const/16 v1, 0x71a

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x71b

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x71c

    aput-byte v6, v0, v1

    const/16 v1, 0x71d

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x71e

    aput-byte v4, v0, v1

    const/16 v1, 0x71f

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x720

    .line 319
    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x721

    aput-byte v4, v0, v1

    const/16 v1, 0x722

    aput-byte v3, v0, v1

    const/16 v1, 0x723

    aput-byte v3, v0, v1

    const/16 v1, 0x724

    aput-byte v3, v0, v1

    const/16 v1, 0x725

    aput-byte v3, v0, v1

    const/16 v1, 0x726

    aput-byte v3, v0, v1

    const/16 v1, 0x727

    aput-byte v3, v0, v1

    const/16 v1, 0x728

    aput-byte v3, v0, v1

    const/16 v1, 0x729

    aput-byte v3, v0, v1

    const/16 v1, 0x72a

    aput-byte v3, v0, v1

    const/16 v1, 0x72b

    aput-byte v3, v0, v1

    const/16 v1, 0x72c

    aput-byte v3, v0, v1

    const/16 v1, 0x72d

    aput-byte v3, v0, v1

    const/16 v1, 0x72e

    aput-byte v3, v0, v1

    const/16 v1, 0x72f

    aput-byte v3, v0, v1

    const/16 v1, 0x730

    .line 320
    aput-byte v3, v0, v1

    const/16 v1, 0x731

    aput-byte v3, v0, v1

    const/16 v1, 0x732

    aput-byte v3, v0, v1

    const/16 v1, 0x733

    aput-byte v3, v0, v1

    const/16 v1, 0x734

    aput-byte v3, v0, v1

    const/16 v1, 0x735

    aput-byte v3, v0, v1

    const/16 v1, 0x736

    aput-byte v3, v0, v1

    const/16 v1, 0x737

    aput-byte v3, v0, v1

    const/16 v1, 0x738

    aput-byte v3, v0, v1

    const/16 v1, 0x739

    aput-byte v3, v0, v1

    const/16 v1, 0x73a

    aput-byte v3, v0, v1

    const/16 v1, 0x73b

    aput-byte v3, v0, v1

    const/16 v1, 0x73c

    aput-byte v3, v0, v1

    const/16 v1, 0x73d

    aput-byte v3, v0, v1

    const/16 v1, 0x73e

    aput-byte v3, v0, v1

    const/16 v1, 0x73f

    aput-byte v3, v0, v1

    const/16 v1, 0x740

    .line 321
    aput-byte v3, v0, v1

    const/16 v1, 0x741

    aput-byte v3, v0, v1

    const/16 v1, 0x742

    aput-byte v3, v0, v1

    const/16 v1, 0x743

    aput-byte v3, v0, v1

    const/16 v1, 0x744

    aput-byte v3, v0, v1

    const/16 v1, 0x745

    aput-byte v3, v0, v1

    const/16 v1, 0x746

    aput-byte v3, v0, v1

    const/16 v1, 0x747

    aput-byte v3, v0, v1

    const/16 v1, 0x748

    aput-byte v3, v0, v1

    const/16 v1, 0x749

    aput-byte v3, v0, v1

    const/16 v1, 0x74a

    aput-byte v3, v0, v1

    const/16 v1, 0x74b

    aput-byte v3, v0, v1

    const/16 v1, 0x74c

    aput-byte v3, v0, v1

    const/16 v1, 0x74d

    aput-byte v3, v0, v1

    const/16 v1, 0x74e

    aput-byte v3, v0, v1

    const/16 v1, 0x74f

    aput-byte v3, v0, v1

    const/16 v1, 0x750

    .line 322
    aput-byte v3, v0, v1

    const/16 v1, 0x751

    aput-byte v3, v0, v1

    const/16 v1, 0x752

    aput-byte v3, v0, v1

    const/16 v1, 0x753

    aput-byte v3, v0, v1

    const/16 v1, 0x754

    aput-byte v3, v0, v1

    const/16 v1, 0x755

    aput-byte v3, v0, v1

    const/16 v1, 0x756

    aput-byte v3, v0, v1

    const/16 v1, 0x757

    aput-byte v3, v0, v1

    const/16 v1, 0x758

    aput-byte v3, v0, v1

    const/16 v1, 0x759

    aput-byte v3, v0, v1

    const/16 v1, 0x75a

    aput-byte v3, v0, v1

    const/16 v1, 0x75b

    aput-byte v3, v0, v1

    const/16 v1, 0x75c

    aput-byte v3, v0, v1

    const/16 v1, 0x75d

    aput-byte v3, v0, v1

    const/16 v1, 0x75e

    aput-byte v3, v0, v1

    const/16 v1, 0x75f

    aput-byte v3, v0, v1

    const/16 v1, 0x760

    .line 323
    aput-byte v3, v0, v1

    const/16 v1, 0x761

    aput-byte v3, v0, v1

    const/16 v1, 0x762

    aput-byte v3, v0, v1

    const/16 v1, 0x763

    aput-byte v3, v0, v1

    const/16 v1, 0x764

    aput-byte v3, v0, v1

    const/16 v1, 0x765

    aput-byte v3, v0, v1

    const/16 v1, 0x766

    aput-byte v3, v0, v1

    const/16 v1, 0x767

    aput-byte v3, v0, v1

    const/16 v1, 0x768

    aput-byte v3, v0, v1

    const/16 v1, 0x769

    aput-byte v3, v0, v1

    const/16 v1, 0x76a

    aput-byte v3, v0, v1

    const/16 v1, 0x76b

    aput-byte v3, v0, v1

    const/16 v1, 0x76c

    aput-byte v3, v0, v1

    const/16 v1, 0x76d

    aput-byte v3, v0, v1

    const/16 v1, 0x76e

    aput-byte v3, v0, v1

    const/16 v1, 0x76f

    aput-byte v3, v0, v1

    const/16 v1, 0x770

    .line 324
    aput-byte v3, v0, v1

    const/16 v1, 0x771

    aput-byte v3, v0, v1

    const/16 v1, 0x772

    aput-byte v3, v0, v1

    const/16 v1, 0x773

    aput-byte v3, v0, v1

    const/16 v1, 0x774

    aput-byte v3, v0, v1

    const/16 v1, 0x775

    aput-byte v3, v0, v1

    const/16 v1, 0x776

    aput-byte v3, v0, v1

    const/16 v1, 0x777

    aput-byte v3, v0, v1

    const/16 v1, 0x778

    aput-byte v3, v0, v1

    const/16 v1, 0x779

    aput-byte v3, v0, v1

    const/16 v1, 0x77a

    aput-byte v3, v0, v1

    const/16 v1, 0x77b

    aput-byte v3, v0, v1

    const/16 v1, 0x77c

    aput-byte v3, v0, v1

    const/16 v1, 0x77d

    aput-byte v3, v0, v1

    const/16 v1, 0x77e

    aput-byte v3, v0, v1

    const/16 v1, 0x77f

    aput-byte v3, v0, v1

    const/16 v1, 0x780

    .line 325
    aput-byte v3, v0, v1

    const/16 v1, 0x781

    aput-byte v3, v0, v1

    const/16 v1, 0x782

    aput-byte v3, v0, v1

    const/16 v1, 0x783

    aput-byte v3, v0, v1

    const/16 v1, 0x784

    aput-byte v3, v0, v1

    const/16 v1, 0x785

    aput-byte v3, v0, v1

    const/16 v1, 0x786

    aput-byte v3, v0, v1

    const/16 v1, 0x787

    aput-byte v3, v0, v1

    const/16 v1, 0x788

    aput-byte v3, v0, v1

    const/16 v1, 0x789

    aput-byte v3, v0, v1

    const/16 v1, 0x78a

    aput-byte v3, v0, v1

    const/16 v1, 0x78b

    aput-byte v3, v0, v1

    const/16 v1, 0x78c

    aput-byte v3, v0, v1

    const/16 v1, 0x78d

    aput-byte v3, v0, v1

    const/16 v1, 0x78e

    aput-byte v5, v0, v1

    const/16 v1, 0x78f

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x790

    .line 326
    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x791

    aput-byte v7, v0, v1

    const/16 v1, 0x792

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x793

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x794

    aput-byte v5, v0, v1

    const/16 v1, 0x795

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x796

    aput-byte v7, v0, v1

    const/16 v1, 0x798

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x799

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x7a0

    .line 327
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x7a1

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x7a5

    aput-byte v3, v0, v1

    const/16 v1, 0x7a6

    aput-byte v3, v0, v1

    const/16 v1, 0x7a7

    aput-byte v3, v0, v1

    const/16 v1, 0x7a8

    aput-byte v3, v0, v1

    const/16 v1, 0x7a9

    aput-byte v3, v0, v1

    const/16 v1, 0x7aa

    aput-byte v3, v0, v1

    const/16 v1, 0x7ab

    aput-byte v3, v0, v1

    const/16 v1, 0x7ac

    aput-byte v3, v0, v1

    const/16 v1, 0x7ad

    aput-byte v3, v0, v1

    const/16 v1, 0x7ae

    aput-byte v3, v0, v1

    const/16 v1, 0x7af

    aput-byte v3, v0, v1

    const/16 v1, 0x7b0

    .line 328
    aput-byte v3, v0, v1

    const/16 v1, 0x7b1

    aput-byte v3, v0, v1

    const/16 v1, 0x7b2

    aput-byte v3, v0, v1

    const/16 v1, 0x7b3

    aput-byte v3, v0, v1

    const/16 v1, 0x7b4

    aput-byte v3, v0, v1

    const/16 v1, 0x7b5

    aput-byte v3, v0, v1

    const/16 v1, 0x7b6

    aput-byte v3, v0, v1

    const/16 v1, 0x7b7

    aput-byte v3, v0, v1

    const/16 v1, 0x7b8

    aput-byte v3, v0, v1

    const/16 v1, 0x7b9

    aput-byte v3, v0, v1

    const/16 v1, 0x7ba

    aput-byte v3, v0, v1

    const/16 v1, 0x7bb

    aput-byte v3, v0, v1

    const/16 v1, 0x7bc

    aput-byte v3, v0, v1

    const/16 v1, 0x7bd

    aput-byte v3, v0, v1

    const/16 v1, 0x7be

    aput-byte v3, v0, v1

    const/16 v1, 0x7bf

    aput-byte v3, v0, v1

    const/16 v1, 0x7c0

    .line 329
    aput-byte v3, v0, v1

    const/16 v1, 0x7c1

    aput-byte v3, v0, v1

    const/16 v1, 0x7c2

    aput-byte v3, v0, v1

    const/16 v1, 0x7c3

    aput-byte v3, v0, v1

    const/16 v1, 0x7c4

    aput-byte v3, v0, v1

    const/16 v1, 0x7c5

    aput-byte v3, v0, v1

    const/16 v1, 0x7c6

    aput-byte v3, v0, v1

    const/16 v1, 0x7c7

    aput-byte v3, v0, v1

    const/16 v1, 0x7c8

    aput-byte v3, v0, v1

    const/16 v1, 0x7c9

    aput-byte v3, v0, v1

    const/16 v1, 0x7ca

    aput-byte v3, v0, v1

    const/16 v1, 0x7cb

    aput-byte v3, v0, v1

    const/16 v1, 0x7cc

    aput-byte v3, v0, v1

    const/16 v1, 0x7cd

    aput-byte v3, v0, v1

    const/16 v1, 0x7ce

    aput-byte v3, v0, v1

    const/16 v1, 0x7cf

    aput-byte v3, v0, v1

    const/16 v1, 0x7d0

    .line 330
    aput-byte v3, v0, v1

    const/16 v1, 0x7d1

    aput-byte v3, v0, v1

    const/16 v1, 0x7d2

    aput-byte v3, v0, v1

    const/16 v1, 0x7d3

    aput-byte v3, v0, v1

    const/16 v1, 0x7d4

    aput-byte v3, v0, v1

    const/16 v1, 0x7d5

    aput-byte v3, v0, v1

    const/16 v1, 0x7d6

    aput-byte v3, v0, v1

    const/16 v1, 0x7d7

    aput-byte v3, v0, v1

    const/16 v1, 0x7d8

    aput-byte v3, v0, v1

    const/16 v1, 0x7d9

    aput-byte v3, v0, v1

    const/16 v1, 0x7da

    aput-byte v3, v0, v1

    const/16 v1, 0x7db

    aput-byte v3, v0, v1

    const/16 v1, 0x7dc

    aput-byte v3, v0, v1

    const/16 v1, 0x7dd

    aput-byte v3, v0, v1

    const/16 v1, 0x7de

    aput-byte v3, v0, v1

    const/16 v1, 0x7df

    aput-byte v3, v0, v1

    const/16 v1, 0x7e0

    .line 331
    aput-byte v3, v0, v1

    const/16 v1, 0x7e1

    aput-byte v3, v0, v1

    const/16 v1, 0x7e2

    aput-byte v3, v0, v1

    const/16 v1, 0x7e3

    aput-byte v3, v0, v1

    const/16 v1, 0x7e4

    aput-byte v3, v0, v1

    const/16 v1, 0x7e5

    aput-byte v3, v0, v1

    const/16 v1, 0x7e6

    aput-byte v3, v0, v1

    const/16 v1, 0x7e7

    aput-byte v3, v0, v1

    const/16 v1, 0x7e8

    aput-byte v3, v0, v1

    const/16 v1, 0x7e9

    aput-byte v3, v0, v1

    const/16 v1, 0x7ea

    aput-byte v3, v0, v1

    const/16 v1, 0x7eb

    aput-byte v3, v0, v1

    const/16 v1, 0x7ec

    aput-byte v3, v0, v1

    const/16 v1, 0x7ed

    aput-byte v3, v0, v1

    const/16 v1, 0x7ee

    aput-byte v3, v0, v1

    const/16 v1, 0x7ef

    aput-byte v3, v0, v1

    const/16 v1, 0x7f0

    .line 332
    aput-byte v3, v0, v1

    const/16 v1, 0x7f1

    aput-byte v3, v0, v1

    const/16 v1, 0x7f2

    aput-byte v3, v0, v1

    const/16 v1, 0x7f3

    aput-byte v3, v0, v1

    const/16 v1, 0x7f4

    aput-byte v3, v0, v1

    const/16 v1, 0x7f5

    aput-byte v3, v0, v1

    const/16 v1, 0x7f6

    aput-byte v3, v0, v1

    const/16 v1, 0x7f7

    aput-byte v3, v0, v1

    const/16 v1, 0x7f8

    aput-byte v3, v0, v1

    const/16 v1, 0x7f9

    aput-byte v3, v0, v1

    const/16 v1, 0x7fa

    aput-byte v3, v0, v1

    const/16 v1, 0x7fb

    aput-byte v3, v0, v1

    const/16 v1, 0x7fc

    aput-byte v3, v0, v1

    const/16 v1, 0x7fd

    aput-byte v3, v0, v1

    const/16 v1, 0x7fe

    aput-byte v3, v0, v1

    const/16 v1, 0x7ff

    aput-byte v3, v0, v1

    const/16 v1, 0x800

    .line 333
    aput-byte v3, v0, v1

    const/16 v1, 0x801

    aput-byte v3, v0, v1

    const/16 v1, 0x802

    aput-byte v3, v0, v1

    const/16 v1, 0x803

    aput-byte v3, v0, v1

    const/16 v1, 0x804

    aput-byte v3, v0, v1

    const/16 v1, 0x805

    aput-byte v3, v0, v1

    const/16 v1, 0x806

    aput-byte v3, v0, v1

    const/16 v1, 0x807

    aput-byte v3, v0, v1

    const/16 v1, 0x808

    aput-byte v3, v0, v1

    const/16 v1, 0x809

    aput-byte v3, v0, v1

    const/16 v1, 0x80a

    aput-byte v3, v0, v1

    const/16 v1, 0x80b

    aput-byte v3, v0, v1

    const/16 v1, 0x80c

    aput-byte v3, v0, v1

    const/16 v1, 0x80d

    aput-byte v3, v0, v1

    const/16 v1, 0x80e

    aput-byte v3, v0, v1

    const/16 v1, 0x80f

    aput-byte v3, v0, v1

    const/16 v1, 0x810

    .line 334
    aput-byte v3, v0, v1

    const/16 v1, 0x811

    aput-byte v3, v0, v1

    const/16 v1, 0x812

    aput-byte v3, v0, v1

    const/16 v1, 0x813

    aput-byte v3, v0, v1

    const/16 v1, 0x814

    aput-byte v3, v0, v1

    const/16 v1, 0x815

    aput-byte v3, v0, v1

    const/16 v1, 0x816

    aput-byte v3, v0, v1

    const/16 v1, 0x817

    aput-byte v3, v0, v1

    const/16 v1, 0x818

    aput-byte v3, v0, v1

    const/16 v1, 0x819

    aput-byte v3, v0, v1

    const/16 v1, 0x81a

    aput-byte v3, v0, v1

    const/16 v1, 0x81b

    aput-byte v3, v0, v1

    const/16 v1, 0x81c

    aput-byte v3, v0, v1

    const/16 v1, 0x81d

    aput-byte v3, v0, v1

    const/16 v1, 0x81e

    aput-byte v3, v0, v1

    const/16 v1, 0x81f

    aput-byte v3, v0, v1

    const/16 v1, 0x820

    .line 335
    aput-byte v3, v0, v1

    const/16 v1, 0x821

    aput-byte v3, v0, v1

    const/16 v1, 0x822

    aput-byte v3, v0, v1

    const/16 v1, 0x823

    aput-byte v3, v0, v1

    const/16 v1, 0x824

    aput-byte v3, v0, v1

    const/16 v1, 0x825

    aput-byte v3, v0, v1

    const/16 v1, 0x826

    aput-byte v3, v0, v1

    const/16 v1, 0x827

    aput-byte v3, v0, v1

    const/16 v1, 0x828

    aput-byte v3, v0, v1

    const/16 v1, 0x829

    aput-byte v3, v0, v1

    const/16 v1, 0x82a

    aput-byte v3, v0, v1

    const/16 v1, 0x82b

    aput-byte v3, v0, v1

    const/16 v1, 0x82c

    aput-byte v3, v0, v1

    const/16 v1, 0x82d

    aput-byte v3, v0, v1

    const/16 v1, 0x82e

    aput-byte v3, v0, v1

    const/16 v1, 0x82f

    aput-byte v3, v0, v1

    const/16 v1, 0x830

    .line 336
    aput-byte v3, v0, v1

    const/16 v1, 0x831

    aput-byte v3, v0, v1

    const/16 v1, 0x832

    aput-byte v3, v0, v1

    const/16 v1, 0x833

    aput-byte v3, v0, v1

    const/16 v1, 0x834

    aput-byte v3, v0, v1

    const/16 v1, 0x835

    aput-byte v3, v0, v1

    const/16 v1, 0x836

    aput-byte v3, v0, v1

    const/16 v1, 0x837

    aput-byte v3, v0, v1

    const/16 v1, 0x838

    aput-byte v3, v0, v1

    const/16 v1, 0x839

    aput-byte v3, v0, v1

    const/16 v1, 0x83a

    aput-byte v3, v0, v1

    const/16 v1, 0x83b

    aput-byte v3, v0, v1

    const/16 v1, 0x83c

    aput-byte v3, v0, v1

    const/16 v1, 0x83d

    aput-byte v3, v0, v1

    const/16 v1, 0x83e

    aput-byte v3, v0, v1

    const/16 v1, 0x83f

    aput-byte v3, v0, v1

    const/16 v1, 0x840

    .line 337
    aput-byte v3, v0, v1

    const/16 v1, 0x841

    aput-byte v3, v0, v1

    const/16 v1, 0x842

    aput-byte v3, v0, v1

    const/16 v1, 0x843

    aput-byte v3, v0, v1

    const/16 v1, 0x844

    aput-byte v3, v0, v1

    const/16 v1, 0x845

    aput-byte v3, v0, v1

    const/16 v1, 0x846

    aput-byte v3, v0, v1

    const/16 v1, 0x847

    aput-byte v3, v0, v1

    const/16 v1, 0x848

    aput-byte v3, v0, v1

    const/16 v1, 0x849

    aput-byte v3, v0, v1

    const/16 v1, 0x84a

    aput-byte v3, v0, v1

    const/16 v1, 0x84b

    aput-byte v3, v0, v1

    const/16 v1, 0x84c

    aput-byte v3, v0, v1

    const/16 v1, 0x84d

    aput-byte v3, v0, v1

    const/16 v1, 0x84e

    aput-byte v3, v0, v1

    const/16 v1, 0x84f

    aput-byte v3, v0, v1

    const/16 v1, 0x850

    .line 338
    aput-byte v3, v0, v1

    const/16 v1, 0x851

    aput-byte v3, v0, v1

    const/16 v1, 0x852

    aput-byte v3, v0, v1

    const/16 v1, 0x853

    aput-byte v3, v0, v1

    const/16 v1, 0x854

    aput-byte v3, v0, v1

    const/16 v1, 0x855

    aput-byte v3, v0, v1

    const/16 v1, 0x856

    aput-byte v3, v0, v1

    const/16 v1, 0x857

    aput-byte v3, v0, v1

    const/16 v1, 0x858

    aput-byte v3, v0, v1

    const/16 v1, 0x859

    aput-byte v3, v0, v1

    const/16 v1, 0x85a

    aput-byte v3, v0, v1

    const/16 v1, 0x85b

    aput-byte v3, v0, v1

    const/16 v1, 0x85c

    aput-byte v3, v0, v1

    const/16 v1, 0x85d    # 3.0E-42f

    aput-byte v3, v0, v1

    const/16 v1, 0x85e

    aput-byte v3, v0, v1

    const/16 v1, 0x85f

    aput-byte v3, v0, v1

    const/16 v1, 0x860

    .line 339
    aput-byte v3, v0, v1

    const/16 v1, 0x861

    aput-byte v3, v0, v1

    const/16 v1, 0x862

    aput-byte v3, v0, v1

    const/16 v1, 0x863

    aput-byte v3, v0, v1

    const/16 v1, 0x864

    aput-byte v3, v0, v1

    const/16 v1, 0x865

    aput-byte v3, v0, v1

    const/16 v1, 0x866

    aput-byte v3, v0, v1

    const/16 v1, 0x867

    aput-byte v3, v0, v1

    const/16 v1, 0x868

    aput-byte v3, v0, v1

    const/16 v1, 0x869

    aput-byte v3, v0, v1

    const/16 v1, 0x86a

    aput-byte v3, v0, v1

    const/16 v1, 0x86b

    aput-byte v3, v0, v1

    const/16 v1, 0x86c

    aput-byte v3, v0, v1

    const/16 v1, 0x86d

    aput-byte v3, v0, v1

    const/16 v1, 0x86e

    aput-byte v3, v0, v1

    const/16 v1, 0x86f

    aput-byte v3, v0, v1

    const/16 v1, 0x870

    .line 340
    aput-byte v3, v0, v1

    const/16 v1, 0x871

    aput-byte v3, v0, v1

    const/16 v1, 0x872

    aput-byte v3, v0, v1

    const/16 v1, 0x873

    aput-byte v3, v0, v1

    const/16 v1, 0x874

    aput-byte v3, v0, v1

    const/16 v1, 0x875

    aput-byte v3, v0, v1

    const/16 v1, 0x876

    aput-byte v3, v0, v1

    const/16 v1, 0x877

    aput-byte v3, v0, v1

    const/16 v1, 0x878

    aput-byte v3, v0, v1

    const/16 v1, 0x879

    aput-byte v3, v0, v1

    const/16 v1, 0x87a

    aput-byte v3, v0, v1

    const/16 v1, 0x87b

    aput-byte v3, v0, v1

    const/16 v1, 0x87c

    aput-byte v3, v0, v1

    const/16 v1, 0x87d

    aput-byte v3, v0, v1

    const/16 v1, 0x87e

    aput-byte v3, v0, v1

    const/16 v1, 0x87f

    aput-byte v3, v0, v1

    const/16 v1, 0x880

    .line 341
    aput-byte v3, v0, v1

    const/16 v1, 0x881

    aput-byte v3, v0, v1

    const/16 v1, 0x882

    aput-byte v3, v0, v1

    const/16 v1, 0x883

    aput-byte v3, v0, v1

    const/16 v1, 0x884

    aput-byte v3, v0, v1

    const/16 v1, 0x885

    aput-byte v3, v0, v1

    const/16 v1, 0x886

    aput-byte v3, v0, v1

    const/16 v1, 0x887

    aput-byte v3, v0, v1

    const/16 v1, 0x888

    aput-byte v3, v0, v1

    const/16 v1, 0x889

    aput-byte v3, v0, v1

    const/16 v1, 0x88a

    aput-byte v3, v0, v1

    const/16 v1, 0x88b

    aput-byte v3, v0, v1

    const/16 v1, 0x88c

    aput-byte v3, v0, v1

    const/16 v1, 0x88d

    aput-byte v3, v0, v1

    const/16 v1, 0x88e

    aput-byte v3, v0, v1

    const/16 v1, 0x88f

    aput-byte v3, v0, v1

    const/16 v1, 0x890

    .line 342
    aput-byte v3, v0, v1

    const/16 v1, 0x891

    aput-byte v3, v0, v1

    const/16 v1, 0x892

    aput-byte v3, v0, v1

    const/16 v1, 0x893

    aput-byte v3, v0, v1

    const/16 v1, 0x894

    aput-byte v3, v0, v1

    const/16 v1, 0x895

    aput-byte v3, v0, v1

    const/16 v1, 0x896

    aput-byte v3, v0, v1

    const/16 v1, 0x897

    aput-byte v3, v0, v1

    const/16 v1, 0x898

    aput-byte v3, v0, v1

    const/16 v1, 0x899

    aput-byte v3, v0, v1

    const/16 v1, 0x89a

    aput-byte v3, v0, v1

    const/16 v1, 0x89b

    aput-byte v3, v0, v1

    const/16 v1, 0x89c

    aput-byte v3, v0, v1

    const/16 v1, 0x89d

    aput-byte v3, v0, v1

    const/16 v1, 0x89e

    aput-byte v3, v0, v1

    const/16 v1, 0x89f

    aput-byte v3, v0, v1

    const/16 v1, 0x8a0

    .line 343
    aput-byte v3, v0, v1

    const/16 v1, 0x8a1

    aput-byte v3, v0, v1

    const/16 v1, 0x8a2

    aput-byte v3, v0, v1

    const/16 v1, 0x8a3

    aput-byte v3, v0, v1

    const/16 v1, 0x8a4

    aput-byte v3, v0, v1

    const/16 v1, 0x8a5

    aput-byte v3, v0, v1

    const/16 v1, 0x8a6

    aput-byte v3, v0, v1

    const/16 v1, 0x8a7

    aput-byte v3, v0, v1

    const/16 v1, 0x8a8

    aput-byte v3, v0, v1

    const/16 v1, 0x8a9

    aput-byte v3, v0, v1

    const/16 v1, 0x8aa

    aput-byte v3, v0, v1

    const/16 v1, 0x8ab

    aput-byte v3, v0, v1

    const/16 v1, 0x8ac

    aput-byte v3, v0, v1

    const/16 v1, 0x8ad

    aput-byte v3, v0, v1

    const/16 v1, 0x8ae

    aput-byte v3, v0, v1

    const/16 v1, 0x8af

    aput-byte v3, v0, v1

    const/16 v1, 0x8b0

    .line 344
    aput-byte v3, v0, v1

    const/16 v1, 0x8b1

    aput-byte v3, v0, v1

    const/16 v1, 0x8b2

    aput-byte v3, v0, v1

    const/16 v1, 0x8b3

    aput-byte v3, v0, v1

    const/16 v1, 0x8b4

    aput-byte v3, v0, v1

    const/16 v1, 0x8b5

    aput-byte v3, v0, v1

    const/16 v1, 0x8b6

    aput-byte v3, v0, v1

    const/16 v1, 0x8b7

    aput-byte v3, v0, v1

    const/16 v1, 0x8b8

    aput-byte v3, v0, v1

    const/16 v1, 0x8b9

    aput-byte v3, v0, v1

    const/16 v1, 0x8ba

    aput-byte v3, v0, v1

    const/16 v1, 0x8bb

    aput-byte v3, v0, v1

    const/16 v1, 0x8bc

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0x8bd

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x8be

    aput-byte v6, v0, v1

    const/16 v1, 0x8bf

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x8c0

    .line 345
    aput-byte v4, v0, v1

    const/16 v1, 0x8c1

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x8c2

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x8c3

    aput-byte v4, v0, v1

    const/16 v1, 0x8c4

    aput-byte v3, v0, v1

    const/16 v1, 0x8c5

    aput-byte v3, v0, v1

    const/16 v1, 0x8c6

    aput-byte v3, v0, v1

    const/16 v1, 0x8c7

    aput-byte v3, v0, v1

    const/16 v1, 0x8c8

    aput-byte v3, v0, v1

    const/16 v1, 0x8c9

    aput-byte v3, v0, v1

    const/16 v1, 0x8ca

    aput-byte v3, v0, v1

    const/16 v1, 0x8cb

    aput-byte v3, v0, v1

    const/16 v1, 0x8cc

    aput-byte v3, v0, v1

    const/16 v1, 0x8cd

    aput-byte v3, v0, v1

    const/16 v1, 0x8ce

    aput-byte v3, v0, v1

    const/16 v1, 0x8cf

    aput-byte v3, v0, v1

    const/16 v1, 0x8d0

    .line 346
    aput-byte v3, v0, v1

    const/16 v1, 0x8d1

    aput-byte v3, v0, v1

    const/16 v1, 0x8d2

    aput-byte v3, v0, v1

    const/16 v1, 0x8d3

    aput-byte v3, v0, v1

    const/16 v1, 0x8d4

    aput-byte v3, v0, v1

    const/16 v1, 0x8d5

    aput-byte v3, v0, v1

    const/16 v1, 0x8d6

    aput-byte v3, v0, v1

    const/16 v1, 0x8d7

    aput-byte v3, v0, v1

    const/16 v1, 0x8d8

    aput-byte v3, v0, v1

    const/16 v1, 0x8d9

    aput-byte v3, v0, v1

    const/16 v1, 0x8da

    aput-byte v3, v0, v1

    const/16 v1, 0x8db

    aput-byte v3, v0, v1

    const/16 v1, 0x8dc

    aput-byte v3, v0, v1

    const/16 v1, 0x8dd

    aput-byte v3, v0, v1

    const/16 v1, 0x8de

    aput-byte v3, v0, v1

    const/16 v1, 0x8df

    aput-byte v3, v0, v1

    const/16 v1, 0x8e0

    .line 347
    aput-byte v3, v0, v1

    const/16 v1, 0x8e1

    aput-byte v3, v0, v1

    const/16 v1, 0x8e2

    aput-byte v3, v0, v1

    const/16 v1, 0x8e3

    aput-byte v3, v0, v1

    const/16 v1, 0x8e4

    aput-byte v3, v0, v1

    const/16 v1, 0x8e5

    aput-byte v3, v0, v1

    const/16 v1, 0x8e6

    aput-byte v3, v0, v1

    const/16 v1, 0x8e7

    aput-byte v3, v0, v1

    const/16 v1, 0x8e8

    aput-byte v3, v0, v1

    const/16 v1, 0x8e9

    aput-byte v3, v0, v1

    const/16 v1, 0x8ea

    aput-byte v3, v0, v1

    const/16 v1, 0x8eb

    aput-byte v3, v0, v1

    const/16 v1, 0x8ec

    aput-byte v3, v0, v1

    const/16 v1, 0x8ed

    aput-byte v3, v0, v1

    const/16 v1, 0x8ee

    aput-byte v3, v0, v1

    const/16 v1, 0x8ef

    aput-byte v3, v0, v1

    const/16 v1, 0x8f0

    .line 348
    aput-byte v3, v0, v1

    const/16 v1, 0x8f1

    aput-byte v3, v0, v1

    const/16 v1, 0x8f2

    aput-byte v3, v0, v1

    const/16 v1, 0x8f3

    aput-byte v3, v0, v1

    const/16 v1, 0x8f4

    aput-byte v3, v0, v1

    const/16 v1, 0x8f5

    aput-byte v3, v0, v1

    const/16 v1, 0x8f6

    aput-byte v3, v0, v1

    const/16 v1, 0x8f7

    aput-byte v3, v0, v1

    const/16 v1, 0x8f8

    aput-byte v3, v0, v1

    const/16 v1, 0x8f9

    aput-byte v3, v0, v1

    const/16 v1, 0x8fa

    aput-byte v3, v0, v1

    const/16 v1, 0x8fb

    aput-byte v3, v0, v1

    const/16 v1, 0x8fc

    aput-byte v3, v0, v1

    const/16 v1, 0x8fd

    aput-byte v3, v0, v1

    const/16 v1, 0x8fe

    aput-byte v3, v0, v1

    const/16 v1, 0x8ff

    aput-byte v3, v0, v1

    const/16 v1, 0x900

    .line 349
    aput-byte v3, v0, v1

    const/16 v1, 0x901

    aput-byte v3, v0, v1

    const/16 v1, 0x902

    aput-byte v3, v0, v1

    const/16 v1, 0x903

    aput-byte v3, v0, v1

    const/16 v1, 0x904

    aput-byte v3, v0, v1

    const/16 v1, 0x905

    aput-byte v3, v0, v1

    const/16 v1, 0x906

    aput-byte v3, v0, v1

    const/16 v1, 0x907

    aput-byte v3, v0, v1

    const/16 v1, 0x908

    aput-byte v3, v0, v1

    const/16 v1, 0x909

    aput-byte v3, v0, v1

    const/16 v1, 0x90a

    aput-byte v3, v0, v1

    const/16 v1, 0x90b

    aput-byte v3, v0, v1

    const/16 v1, 0x90c

    aput-byte v3, v0, v1

    const/16 v1, 0x90d

    aput-byte v3, v0, v1

    const/16 v1, 0x90e

    aput-byte v3, v0, v1

    const/16 v1, 0x90f

    aput-byte v3, v0, v1

    const/16 v1, 0x910

    .line 350
    aput-byte v3, v0, v1

    const/16 v1, 0x911

    aput-byte v3, v0, v1

    const/16 v1, 0x912

    aput-byte v3, v0, v1

    const/16 v1, 0x913

    aput-byte v3, v0, v1

    const/16 v1, 0x914

    aput-byte v3, v0, v1

    const/16 v1, 0x915

    aput-byte v3, v0, v1

    const/16 v1, 0x916

    aput-byte v3, v0, v1

    const/16 v1, 0x917

    aput-byte v3, v0, v1

    const/16 v1, 0x918

    aput-byte v3, v0, v1

    const/16 v1, 0x919

    aput-byte v3, v0, v1

    const/16 v1, 0x91a

    aput-byte v3, v0, v1

    const/16 v1, 0x91b

    aput-byte v3, v0, v1

    const/16 v1, 0x91c

    aput-byte v3, v0, v1

    const/16 v1, 0x91d

    aput-byte v3, v0, v1

    const/16 v1, 0x91e

    aput-byte v3, v0, v1

    const/16 v1, 0x91f

    aput-byte v3, v0, v1

    const/16 v1, 0x920

    .line 351
    aput-byte v3, v0, v1

    const/16 v1, 0x921

    aput-byte v3, v0, v1

    const/16 v1, 0x922

    aput-byte v3, v0, v1

    const/16 v1, 0x923

    aput-byte v3, v0, v1

    const/16 v1, 0x924

    aput-byte v3, v0, v1

    const/16 v1, 0x925

    aput-byte v3, v0, v1

    const/16 v1, 0x926

    aput-byte v3, v0, v1

    const/16 v1, 0x927

    aput-byte v3, v0, v1

    const/16 v1, 0x928

    aput-byte v3, v0, v1

    const/16 v1, 0x929

    aput-byte v3, v0, v1

    const/16 v1, 0x92a

    aput-byte v3, v0, v1

    const/16 v1, 0x92b

    aput-byte v3, v0, v1

    const/16 v1, 0x92c

    aput-byte v3, v0, v1

    const/16 v1, 0x92d

    aput-byte v3, v0, v1

    const/16 v1, 0x92e

    aput-byte v3, v0, v1

    const/16 v1, 0x92f

    aput-byte v3, v0, v1

    const/16 v1, 0x930

    .line 352
    aput-byte v5, v0, v1

    const/16 v1, 0x931

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x932

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x933

    aput-byte v7, v0, v1

    const/16 v1, 0x934

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x935

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x936

    aput-byte v5, v0, v1

    const/16 v1, 0x937

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x938

    aput-byte v7, v0, v1

    const/16 v1, 0x93a

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x93b

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x942

    .line 353
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x943

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x947

    aput-byte v3, v0, v1

    const/16 v1, 0x948

    aput-byte v3, v0, v1

    const/16 v1, 0x949

    aput-byte v3, v0, v1

    const/16 v1, 0x94a

    aput-byte v3, v0, v1

    const/16 v1, 0x94b

    aput-byte v3, v0, v1

    const/16 v1, 0x94c

    aput-byte v3, v0, v1

    const/16 v1, 0x94d

    aput-byte v3, v0, v1

    const/16 v1, 0x94e

    aput-byte v3, v0, v1

    const/16 v1, 0x94f

    aput-byte v3, v0, v1

    const/16 v1, 0x950

    .line 354
    aput-byte v3, v0, v1

    const/16 v1, 0x951

    aput-byte v3, v0, v1

    const/16 v1, 0x952

    aput-byte v3, v0, v1

    const/16 v1, 0x953

    aput-byte v3, v0, v1

    const/16 v1, 0x954

    aput-byte v3, v0, v1

    const/16 v1, 0x955

    aput-byte v3, v0, v1

    const/16 v1, 0x956

    aput-byte v3, v0, v1

    const/16 v1, 0x957

    aput-byte v3, v0, v1

    const/16 v1, 0x958

    aput-byte v3, v0, v1

    const/16 v1, 0x959

    aput-byte v3, v0, v1

    const/16 v1, 0x95a

    aput-byte v3, v0, v1

    const/16 v1, 0x95b

    aput-byte v3, v0, v1

    const/16 v1, 0x95c

    aput-byte v3, v0, v1

    const/16 v1, 0x95d

    aput-byte v3, v0, v1

    const/16 v1, 0x95e

    aput-byte v3, v0, v1

    const/16 v1, 0x95f

    aput-byte v3, v0, v1

    const/16 v1, 0x960

    .line 355
    aput-byte v3, v0, v1

    const/16 v1, 0x961

    aput-byte v3, v0, v1

    const/16 v1, 0x962

    aput-byte v3, v0, v1

    const/16 v1, 0x963

    aput-byte v3, v0, v1

    const/16 v1, 0x964

    aput-byte v3, v0, v1

    const/16 v1, 0x965

    aput-byte v3, v0, v1

    const/16 v1, 0x966

    aput-byte v3, v0, v1

    const/16 v1, 0x967

    aput-byte v3, v0, v1

    const/16 v1, 0x968

    aput-byte v3, v0, v1

    const/16 v1, 0x969

    aput-byte v3, v0, v1

    const/16 v1, 0x96a

    aput-byte v3, v0, v1

    const/16 v1, 0x96b

    aput-byte v3, v0, v1

    const/16 v1, 0x96c

    aput-byte v3, v0, v1

    const/16 v1, 0x96d

    aput-byte v3, v0, v1

    const/16 v1, 0x96e

    aput-byte v3, v0, v1

    const/16 v1, 0x96f

    aput-byte v3, v0, v1

    const/16 v1, 0x970

    .line 356
    aput-byte v3, v0, v1

    const/16 v1, 0x971

    aput-byte v3, v0, v1

    const/16 v1, 0x972

    aput-byte v3, v0, v1

    const/16 v1, 0x973

    aput-byte v3, v0, v1

    const/16 v1, 0x974

    aput-byte v3, v0, v1

    const/16 v1, 0x975

    aput-byte v3, v0, v1

    const/16 v1, 0x976

    aput-byte v3, v0, v1

    const/16 v1, 0x977

    aput-byte v3, v0, v1

    const/16 v1, 0x978

    aput-byte v3, v0, v1

    const/16 v1, 0x979

    aput-byte v3, v0, v1

    const/16 v1, 0x97a

    aput-byte v3, v0, v1

    const/16 v1, 0x97b

    aput-byte v3, v0, v1

    const/16 v1, 0x97c

    aput-byte v3, v0, v1

    const/16 v1, 0x97d

    aput-byte v3, v0, v1

    const/16 v1, 0x97e

    aput-byte v3, v0, v1

    const/16 v1, 0x97f

    aput-byte v3, v0, v1

    const/16 v1, 0x980

    .line 357
    aput-byte v3, v0, v1

    const/16 v1, 0x981

    aput-byte v3, v0, v1

    const/16 v1, 0x982

    aput-byte v3, v0, v1

    const/16 v1, 0x983

    aput-byte v3, v0, v1

    const/16 v1, 0x984

    aput-byte v3, v0, v1

    const/16 v1, 0x985

    aput-byte v3, v0, v1

    const/16 v1, 0x986

    aput-byte v3, v0, v1

    const/16 v1, 0x987

    aput-byte v3, v0, v1

    const/16 v1, 0x988

    aput-byte v3, v0, v1

    const/16 v1, 0x989

    aput-byte v3, v0, v1

    const/16 v1, 0x98a

    aput-byte v3, v0, v1

    const/16 v1, 0x98b

    aput-byte v3, v0, v1

    const/16 v1, 0x98c

    aput-byte v3, v0, v1

    const/16 v1, 0x98d

    aput-byte v3, v0, v1

    const/16 v1, 0x98e

    aput-byte v3, v0, v1

    const/16 v1, 0x98f

    aput-byte v3, v0, v1

    const/16 v1, 0x990

    .line 358
    aput-byte v3, v0, v1

    const/16 v1, 0x991

    aput-byte v3, v0, v1

    const/16 v1, 0x992

    aput-byte v3, v0, v1

    const/16 v1, 0x993

    aput-byte v3, v0, v1

    const/16 v1, 0x994

    aput-byte v3, v0, v1

    const/16 v1, 0x995

    aput-byte v3, v0, v1

    const/16 v1, 0x996

    aput-byte v3, v0, v1

    const/16 v1, 0x997

    aput-byte v3, v0, v1

    const/16 v1, 0x998

    aput-byte v3, v0, v1

    const/16 v1, 0x999

    aput-byte v3, v0, v1

    const/16 v1, 0x99a

    aput-byte v3, v0, v1

    const/16 v1, 0x99b

    aput-byte v3, v0, v1

    const/16 v1, 0x99c

    aput-byte v3, v0, v1

    const/16 v1, 0x99d

    aput-byte v3, v0, v1

    const/16 v1, 0x99e

    aput-byte v3, v0, v1

    const/16 v1, 0x99f

    aput-byte v3, v0, v1

    const/16 v1, 0x9a0

    .line 359
    aput-byte v3, v0, v1

    const/16 v1, 0x9a1

    aput-byte v3, v0, v1

    const/16 v1, 0x9a2

    aput-byte v3, v0, v1

    const/16 v1, 0x9a3

    aput-byte v3, v0, v1

    const/16 v1, 0x9a4

    aput-byte v3, v0, v1

    const/16 v1, 0x9a5

    aput-byte v3, v0, v1

    const/16 v1, 0x9a6

    aput-byte v3, v0, v1

    const/16 v1, 0x9a7

    aput-byte v3, v0, v1

    const/16 v1, 0x9a8

    aput-byte v3, v0, v1

    const/16 v1, 0x9a9

    aput-byte v3, v0, v1

    const/16 v1, 0x9aa

    aput-byte v3, v0, v1

    const/16 v1, 0x9ab

    aput-byte v3, v0, v1

    const/16 v1, 0x9ac

    aput-byte v3, v0, v1

    const/16 v1, 0x9ad

    aput-byte v3, v0, v1

    const/16 v1, 0x9ae

    aput-byte v3, v0, v1

    const/16 v1, 0x9af

    aput-byte v3, v0, v1

    const/16 v1, 0x9b0

    .line 360
    aput-byte v3, v0, v1

    const/16 v1, 0x9b1

    aput-byte v3, v0, v1

    const/16 v1, 0x9b2

    aput-byte v3, v0, v1

    const/16 v1, 0x9b3

    aput-byte v3, v0, v1

    const/16 v1, 0x9b4

    aput-byte v3, v0, v1

    const/16 v1, 0x9b5

    aput-byte v3, v0, v1

    const/16 v1, 0x9b6

    aput-byte v3, v0, v1

    const/16 v1, 0x9b7

    aput-byte v3, v0, v1

    const/16 v1, 0x9b8

    aput-byte v3, v0, v1

    const/16 v1, 0x9b9

    aput-byte v3, v0, v1

    const/16 v1, 0x9ba

    aput-byte v3, v0, v1

    const/16 v1, 0x9bb

    aput-byte v3, v0, v1

    const/16 v1, 0x9bc

    aput-byte v3, v0, v1

    const/16 v1, 0x9bd

    aput-byte v3, v0, v1

    const/16 v1, 0x9be

    aput-byte v3, v0, v1

    const/16 v1, 0x9bf

    aput-byte v3, v0, v1

    const/16 v1, 0x9c0

    .line 361
    aput-byte v3, v0, v1

    const/16 v1, 0x9c1

    aput-byte v3, v0, v1

    const/16 v1, 0x9c2

    aput-byte v3, v0, v1

    const/16 v1, 0x9c3

    aput-byte v3, v0, v1

    const/16 v1, 0x9c4

    aput-byte v3, v0, v1

    const/16 v1, 0x9c5

    aput-byte v3, v0, v1

    const/16 v1, 0x9c6

    aput-byte v3, v0, v1

    const/16 v1, 0x9c7

    aput-byte v3, v0, v1

    const/16 v1, 0x9c8

    aput-byte v3, v0, v1

    const/16 v1, 0x9c9

    aput-byte v3, v0, v1

    const/16 v1, 0x9ca

    aput-byte v3, v0, v1

    const/16 v1, 0x9cb

    aput-byte v3, v0, v1

    const/16 v1, 0x9cc

    aput-byte v3, v0, v1

    const/16 v1, 0x9cd

    aput-byte v3, v0, v1

    const/16 v1, 0x9ce

    aput-byte v3, v0, v1

    const/16 v1, 0x9cf

    aput-byte v3, v0, v1

    const/16 v1, 0x9d0

    .line 362
    aput-byte v3, v0, v1

    const/16 v1, 0x9d1

    aput-byte v3, v0, v1

    const/16 v1, 0x9d2

    aput-byte v3, v0, v1

    const/16 v1, 0x9d3

    aput-byte v3, v0, v1

    const/16 v1, 0x9d4

    aput-byte v3, v0, v1

    const/16 v1, 0x9d5

    aput-byte v3, v0, v1

    const/16 v1, 0x9d6

    aput-byte v3, v0, v1

    const/16 v1, 0x9d7

    aput-byte v3, v0, v1

    const/16 v1, 0x9d8

    aput-byte v3, v0, v1

    const/16 v1, 0x9d9

    aput-byte v3, v0, v1

    const/16 v1, 0x9da

    aput-byte v3, v0, v1

    const/16 v1, 0x9db

    aput-byte v3, v0, v1

    const/16 v1, 0x9dc

    aput-byte v3, v0, v1

    const/16 v1, 0x9dd

    aput-byte v3, v0, v1

    const/16 v1, 0x9de

    aput-byte v3, v0, v1

    const/16 v1, 0x9df

    aput-byte v3, v0, v1

    const/16 v1, 0x9e0

    .line 363
    aput-byte v3, v0, v1

    const/16 v1, 0x9e1

    aput-byte v3, v0, v1

    const/16 v1, 0x9e2

    aput-byte v3, v0, v1

    const/16 v1, 0x9e3

    aput-byte v3, v0, v1

    const/16 v1, 0x9e4

    aput-byte v3, v0, v1

    const/16 v1, 0x9e5

    aput-byte v3, v0, v1

    const/16 v1, 0x9e6

    aput-byte v3, v0, v1

    const/16 v1, 0x9e7

    aput-byte v3, v0, v1

    const/16 v1, 0x9e8

    aput-byte v3, v0, v1

    const/16 v1, 0x9e9

    aput-byte v3, v0, v1

    const/16 v1, 0x9ea

    aput-byte v3, v0, v1

    const/16 v1, 0x9eb

    aput-byte v3, v0, v1

    const/16 v1, 0x9ec

    aput-byte v3, v0, v1

    const/16 v1, 0x9ed

    aput-byte v3, v0, v1

    const/16 v1, 0x9ee

    aput-byte v3, v0, v1

    const/16 v1, 0x9ef

    aput-byte v3, v0, v1

    const/16 v1, 0x9f0

    .line 364
    aput-byte v3, v0, v1

    const/16 v1, 0x9f1

    aput-byte v3, v0, v1

    const/16 v1, 0x9f2

    aput-byte v3, v0, v1

    const/16 v1, 0x9f3

    aput-byte v3, v0, v1

    const/16 v1, 0x9f4

    aput-byte v3, v0, v1

    const/16 v1, 0x9f5

    aput-byte v3, v0, v1

    const/16 v1, 0x9f6

    aput-byte v3, v0, v1

    const/16 v1, 0x9f7

    aput-byte v3, v0, v1

    const/16 v1, 0x9f8

    aput-byte v3, v0, v1

    const/16 v1, 0x9f9

    aput-byte v3, v0, v1

    const/16 v1, 0x9fa

    aput-byte v3, v0, v1

    const/16 v1, 0x9fb

    aput-byte v3, v0, v1

    const/16 v1, 0x9fc

    aput-byte v3, v0, v1

    const/16 v1, 0x9fd

    aput-byte v3, v0, v1

    const/16 v1, 0x9fe

    aput-byte v3, v0, v1

    const/16 v1, 0x9ff

    aput-byte v3, v0, v1

    const/16 v1, 0xa00

    .line 365
    aput-byte v3, v0, v1

    const/16 v1, 0xa01

    aput-byte v3, v0, v1

    const/16 v1, 0xa02

    aput-byte v3, v0, v1

    const/16 v1, 0xa03

    aput-byte v3, v0, v1

    const/16 v1, 0xa04

    aput-byte v3, v0, v1

    const/16 v1, 0xa05

    aput-byte v3, v0, v1

    const/16 v1, 0xa06

    aput-byte v3, v0, v1

    const/16 v1, 0xa07

    aput-byte v3, v0, v1

    const/16 v1, 0xa08

    aput-byte v3, v0, v1

    const/16 v1, 0xa09

    aput-byte v3, v0, v1

    const/16 v1, 0xa0a

    aput-byte v3, v0, v1

    const/16 v1, 0xa0b

    aput-byte v3, v0, v1

    const/16 v1, 0xa0c

    aput-byte v3, v0, v1

    const/16 v1, 0xa0d

    aput-byte v3, v0, v1

    const/16 v1, 0xa0e

    aput-byte v3, v0, v1

    const/16 v1, 0xa0f

    aput-byte v3, v0, v1

    const/16 v1, 0xa10

    .line 366
    aput-byte v3, v0, v1

    const/16 v1, 0xa11

    aput-byte v3, v0, v1

    const/16 v1, 0xa12

    aput-byte v3, v0, v1

    const/16 v1, 0xa13

    aput-byte v3, v0, v1

    const/16 v1, 0xa14

    aput-byte v3, v0, v1

    const/16 v1, 0xa15

    aput-byte v3, v0, v1

    const/16 v1, 0xa16

    aput-byte v3, v0, v1

    const/16 v1, 0xa17

    aput-byte v3, v0, v1

    const/16 v1, 0xa18

    aput-byte v3, v0, v1

    const/16 v1, 0xa19

    aput-byte v3, v0, v1

    const/16 v1, 0xa1a

    aput-byte v3, v0, v1

    const/16 v1, 0xa1b

    aput-byte v3, v0, v1

    const/16 v1, 0xa1c

    aput-byte v3, v0, v1

    const/16 v1, 0xa1d

    aput-byte v3, v0, v1

    const/16 v1, 0xa1e

    aput-byte v3, v0, v1

    const/16 v1, 0xa1f

    aput-byte v3, v0, v1

    const/16 v1, 0xa20

    .line 367
    aput-byte v3, v0, v1

    const/16 v1, 0xa21

    aput-byte v3, v0, v1

    const/16 v1, 0xa22

    aput-byte v3, v0, v1

    const/16 v1, 0xa23

    aput-byte v3, v0, v1

    const/16 v1, 0xa24

    aput-byte v3, v0, v1

    const/16 v1, 0xa25

    aput-byte v3, v0, v1

    const/16 v1, 0xa26

    aput-byte v3, v0, v1

    const/16 v1, 0xa27

    aput-byte v3, v0, v1

    const/16 v1, 0xa28

    aput-byte v3, v0, v1

    const/16 v1, 0xa29

    aput-byte v3, v0, v1

    const/16 v1, 0xa2a

    aput-byte v3, v0, v1

    const/16 v1, 0xa2b

    aput-byte v3, v0, v1

    const/16 v1, 0xa2c

    aput-byte v3, v0, v1

    const/16 v1, 0xa2d

    aput-byte v3, v0, v1

    const/16 v1, 0xa2e

    aput-byte v3, v0, v1

    const/16 v1, 0xa2f

    aput-byte v3, v0, v1

    const/16 v1, 0xa30

    .line 368
    aput-byte v3, v0, v1

    const/16 v1, 0xa31

    aput-byte v3, v0, v1

    const/16 v1, 0xa32

    aput-byte v3, v0, v1

    const/16 v1, 0xa33

    aput-byte v3, v0, v1

    const/16 v1, 0xa34

    aput-byte v3, v0, v1

    const/16 v1, 0xa35

    aput-byte v3, v0, v1

    const/16 v1, 0xa36

    aput-byte v3, v0, v1

    const/16 v1, 0xa37

    aput-byte v3, v0, v1

    const/16 v1, 0xa38

    aput-byte v3, v0, v1

    const/16 v1, 0xa39

    aput-byte v3, v0, v1

    const/16 v1, 0xa3a

    aput-byte v3, v0, v1

    const/16 v1, 0xa3b

    aput-byte v3, v0, v1

    const/16 v1, 0xa3c

    aput-byte v3, v0, v1

    const/16 v1, 0xa3d

    aput-byte v3, v0, v1

    const/16 v1, 0xa3e

    aput-byte v3, v0, v1

    const/16 v1, 0xa3f

    aput-byte v3, v0, v1

    const/16 v1, 0xa40

    .line 369
    aput-byte v3, v0, v1

    const/16 v1, 0xa41

    aput-byte v3, v0, v1

    const/16 v1, 0xa42

    aput-byte v3, v0, v1

    const/16 v1, 0xa43

    aput-byte v3, v0, v1

    const/16 v1, 0xa44

    aput-byte v3, v0, v1

    const/16 v1, 0xa45

    aput-byte v3, v0, v1

    const/16 v1, 0xa46

    aput-byte v3, v0, v1

    const/16 v1, 0xa47

    aput-byte v3, v0, v1

    const/16 v1, 0xa48

    aput-byte v3, v0, v1

    const/16 v1, 0xa49

    aput-byte v3, v0, v1

    const/16 v1, 0xa4a

    aput-byte v3, v0, v1

    const/16 v1, 0xa4b

    aput-byte v3, v0, v1

    const/16 v1, 0xa4c

    aput-byte v3, v0, v1

    const/16 v1, 0xa4d

    aput-byte v3, v0, v1

    const/16 v1, 0xa4e

    aput-byte v3, v0, v1

    const/16 v1, 0xa4f

    aput-byte v3, v0, v1

    const/16 v1, 0xa50

    .line 370
    aput-byte v3, v0, v1

    const/16 v1, 0xa51

    aput-byte v3, v0, v1

    const/16 v1, 0xa52

    aput-byte v3, v0, v1

    const/16 v1, 0xa53

    aput-byte v3, v0, v1

    const/16 v1, 0xa54

    aput-byte v3, v0, v1

    const/16 v1, 0xa55

    aput-byte v3, v0, v1

    const/16 v1, 0xa56

    aput-byte v3, v0, v1

    const/16 v1, 0xa57

    aput-byte v3, v0, v1

    const/16 v1, 0xa58

    aput-byte v3, v0, v1

    const/16 v1, 0xa59

    aput-byte v3, v0, v1

    const/16 v1, 0xa5a

    aput-byte v3, v0, v1

    const/16 v1, 0xa5b

    aput-byte v3, v0, v1

    const/16 v1, 0xa5c

    aput-byte v3, v0, v1

    const/16 v1, 0xa5d

    aput-byte v3, v0, v1

    const/16 v1, 0xa5e

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xa5f

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xa60

    .line 371
    aput-byte v6, v0, v1

    const/16 v1, 0xa61

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xa62

    aput-byte v4, v0, v1

    const/16 v1, 0xa63

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xa64

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xa65

    aput-byte v4, v0, v1

    const/16 v1, 0xa66

    aput-byte v3, v0, v1

    const/16 v1, 0xa67

    aput-byte v3, v0, v1

    const/16 v1, 0xa68

    aput-byte v3, v0, v1

    const/16 v1, 0xa69

    aput-byte v3, v0, v1

    const/16 v1, 0xa6a

    aput-byte v3, v0, v1

    const/16 v1, 0xa6b

    aput-byte v3, v0, v1

    const/16 v1, 0xa6c

    aput-byte v3, v0, v1

    const/16 v1, 0xa6d

    aput-byte v3, v0, v1

    const/16 v1, 0xa6e

    aput-byte v3, v0, v1

    const/16 v1, 0xa6f

    aput-byte v3, v0, v1

    const/16 v1, 0xa70

    .line 372
    aput-byte v3, v0, v1

    const/16 v1, 0xa71

    aput-byte v3, v0, v1

    const/16 v1, 0xa72

    aput-byte v3, v0, v1

    const/16 v1, 0xa73

    aput-byte v3, v0, v1

    const/16 v1, 0xa74

    aput-byte v3, v0, v1

    const/16 v1, 0xa75

    aput-byte v3, v0, v1

    const/16 v1, 0xa76

    aput-byte v3, v0, v1

    const/16 v1, 0xa77

    aput-byte v3, v0, v1

    const/16 v1, 0xa78

    aput-byte v3, v0, v1

    const/16 v1, 0xa79

    aput-byte v3, v0, v1

    const/16 v1, 0xa7a

    aput-byte v3, v0, v1

    const/16 v1, 0xa7b

    aput-byte v3, v0, v1

    const/16 v1, 0xa7c

    aput-byte v3, v0, v1

    const/16 v1, 0xa7d

    aput-byte v3, v0, v1

    const/16 v1, 0xa7e

    aput-byte v3, v0, v1

    const/16 v1, 0xa7f

    aput-byte v3, v0, v1

    const/16 v1, 0xa80

    .line 373
    aput-byte v3, v0, v1

    const/16 v1, 0xa81

    aput-byte v3, v0, v1

    const/16 v1, 0xa82

    aput-byte v3, v0, v1

    const/16 v1, 0xa83

    aput-byte v3, v0, v1

    const/16 v1, 0xa84

    aput-byte v3, v0, v1

    const/16 v1, 0xa85

    aput-byte v3, v0, v1

    const/16 v1, 0xa86

    aput-byte v3, v0, v1

    const/16 v1, 0xa87

    aput-byte v3, v0, v1

    const/16 v1, 0xa88

    aput-byte v3, v0, v1

    const/16 v1, 0xa89

    aput-byte v3, v0, v1

    const/16 v1, 0xa8a

    aput-byte v3, v0, v1

    const/16 v1, 0xa8b

    aput-byte v3, v0, v1

    const/16 v1, 0xa8c

    aput-byte v3, v0, v1

    const/16 v1, 0xa8d

    aput-byte v3, v0, v1

    const/16 v1, 0xa8e

    aput-byte v3, v0, v1

    const/16 v1, 0xa8f

    aput-byte v3, v0, v1

    const/16 v1, 0xa90

    .line 374
    aput-byte v3, v0, v1

    const/16 v1, 0xa91

    aput-byte v3, v0, v1

    const/16 v1, 0xa92

    aput-byte v3, v0, v1

    const/16 v1, 0xa93

    aput-byte v3, v0, v1

    const/16 v1, 0xa94

    aput-byte v3, v0, v1

    const/16 v1, 0xa95

    aput-byte v3, v0, v1

    const/16 v1, 0xa96

    aput-byte v3, v0, v1

    const/16 v1, 0xa97

    aput-byte v3, v0, v1

    const/16 v1, 0xa98

    aput-byte v3, v0, v1

    const/16 v1, 0xa99

    aput-byte v3, v0, v1

    const/16 v1, 0xa9a

    aput-byte v3, v0, v1

    const/16 v1, 0xa9b

    aput-byte v3, v0, v1

    const/16 v1, 0xa9c

    aput-byte v3, v0, v1

    const/16 v1, 0xa9d

    aput-byte v3, v0, v1

    const/16 v1, 0xa9e

    aput-byte v3, v0, v1

    const/16 v1, 0xa9f

    aput-byte v3, v0, v1

    const/16 v1, 0xaa0

    .line 375
    aput-byte v3, v0, v1

    const/16 v1, 0xaa1

    aput-byte v3, v0, v1

    const/16 v1, 0xaa2

    aput-byte v3, v0, v1

    const/16 v1, 0xaa3

    aput-byte v3, v0, v1

    const/16 v1, 0xaa4

    aput-byte v3, v0, v1

    const/16 v1, 0xaa5

    aput-byte v3, v0, v1

    const/16 v1, 0xaa6

    aput-byte v3, v0, v1

    const/16 v1, 0xaa7

    aput-byte v3, v0, v1

    const/16 v1, 0xaa8

    aput-byte v3, v0, v1

    const/16 v1, 0xaa9

    aput-byte v3, v0, v1

    const/16 v1, 0xaaa

    aput-byte v3, v0, v1

    const/16 v1, 0xaab

    aput-byte v3, v0, v1

    const/16 v1, 0xaac

    aput-byte v3, v0, v1

    const/16 v1, 0xaad

    aput-byte v3, v0, v1

    const/16 v1, 0xaae

    aput-byte v3, v0, v1

    const/16 v1, 0xaaf

    aput-byte v3, v0, v1

    const/16 v1, 0xab0

    .line 376
    aput-byte v3, v0, v1

    const/16 v1, 0xab1

    aput-byte v3, v0, v1

    const/16 v1, 0xab2

    aput-byte v3, v0, v1

    const/16 v1, 0xab3

    aput-byte v3, v0, v1

    const/16 v1, 0xab4

    aput-byte v3, v0, v1

    const/16 v1, 0xab5

    aput-byte v3, v0, v1

    const/16 v1, 0xab6

    aput-byte v3, v0, v1

    const/16 v1, 0xab7

    aput-byte v3, v0, v1

    const/16 v1, 0xab8

    aput-byte v3, v0, v1

    const/16 v1, 0xab9

    aput-byte v3, v0, v1

    const/16 v1, 0xaba

    aput-byte v3, v0, v1

    const/16 v1, 0xabb

    aput-byte v3, v0, v1

    const/16 v1, 0xabc

    aput-byte v3, v0, v1

    const/16 v1, 0xabd

    aput-byte v3, v0, v1

    const/16 v1, 0xabe

    aput-byte v3, v0, v1

    const/16 v1, 0xabf

    aput-byte v3, v0, v1

    const/16 v1, 0xac0

    .line 377
    aput-byte v3, v0, v1

    const/16 v1, 0xac1

    aput-byte v3, v0, v1

    const/16 v1, 0xac2

    aput-byte v3, v0, v1

    const/16 v1, 0xac3

    aput-byte v3, v0, v1

    const/16 v1, 0xac4

    aput-byte v3, v0, v1

    const/16 v1, 0xac5

    aput-byte v3, v0, v1

    const/16 v1, 0xac6

    aput-byte v3, v0, v1

    const/16 v1, 0xac7

    aput-byte v3, v0, v1

    const/16 v1, 0xac8

    aput-byte v3, v0, v1

    const/16 v1, 0xac9

    aput-byte v3, v0, v1

    const/16 v1, 0xaca

    aput-byte v3, v0, v1

    const/16 v1, 0xacb

    aput-byte v3, v0, v1

    const/16 v1, 0xacc

    aput-byte v3, v0, v1

    const/16 v1, 0xacd

    aput-byte v3, v0, v1

    const/16 v1, 0xace

    aput-byte v3, v0, v1

    const/16 v1, 0xacf

    aput-byte v3, v0, v1

    const/16 v1, 0xad0

    .line 378
    aput-byte v3, v0, v1

    const/16 v1, 0xad1

    aput-byte v3, v0, v1

    const/16 v1, 0xad2

    aput-byte v5, v0, v1

    const/16 v1, 0xad3

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xad4

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xad5

    aput-byte v7, v0, v1

    const/16 v1, 0xad6

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xad7

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xad8

    aput-byte v5, v0, v1

    const/16 v1, 0xad9

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xada

    aput-byte v7, v0, v1

    const/16 v1, 0xadc

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xadd

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xae4

    .line 379
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xae5

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xae9

    aput-byte v3, v0, v1

    const/16 v1, 0xaea

    aput-byte v3, v0, v1

    const/16 v1, 0xaeb

    aput-byte v3, v0, v1

    const/16 v1, 0xaec

    aput-byte v3, v0, v1

    const/16 v1, 0xaed

    aput-byte v3, v0, v1

    const/16 v1, 0xaee

    aput-byte v3, v0, v1

    const/16 v1, 0xaef

    aput-byte v3, v0, v1

    const/16 v1, 0xaf0

    .line 380
    aput-byte v3, v0, v1

    const/16 v1, 0xaf1

    aput-byte v3, v0, v1

    const/16 v1, 0xaf2

    aput-byte v3, v0, v1

    const/16 v1, 0xaf3

    aput-byte v3, v0, v1

    const/16 v1, 0xaf4

    aput-byte v3, v0, v1

    const/16 v1, 0xaf5

    aput-byte v3, v0, v1

    const/16 v1, 0xaf6

    aput-byte v3, v0, v1

    const/16 v1, 0xaf7

    aput-byte v3, v0, v1

    const/16 v1, 0xaf8

    aput-byte v3, v0, v1

    const/16 v1, 0xaf9

    aput-byte v3, v0, v1

    const/16 v1, 0xafa

    aput-byte v3, v0, v1

    const/16 v1, 0xafb

    aput-byte v3, v0, v1

    const/16 v1, 0xafc

    aput-byte v3, v0, v1

    const/16 v1, 0xafd

    aput-byte v3, v0, v1

    const/16 v1, 0xafe

    aput-byte v3, v0, v1

    const/16 v1, 0xaff

    aput-byte v3, v0, v1

    const/16 v1, 0xb00

    .line 381
    aput-byte v3, v0, v1

    const/16 v1, 0xb01

    aput-byte v3, v0, v1

    const/16 v1, 0xb02

    aput-byte v3, v0, v1

    const/16 v1, 0xb03

    aput-byte v3, v0, v1

    const/16 v1, 0xb04

    aput-byte v3, v0, v1

    const/16 v1, 0xb05

    aput-byte v3, v0, v1

    const/16 v1, 0xb06

    aput-byte v3, v0, v1

    const/16 v1, 0xb07

    aput-byte v3, v0, v1

    const/16 v1, 0xb08

    aput-byte v3, v0, v1

    const/16 v1, 0xb09

    aput-byte v3, v0, v1

    const/16 v1, 0xb0a

    aput-byte v3, v0, v1

    const/16 v1, 0xb0b

    aput-byte v3, v0, v1

    const/16 v1, 0xb0c

    aput-byte v3, v0, v1

    const/16 v1, 0xb0d

    aput-byte v3, v0, v1

    const/16 v1, 0xb0e

    aput-byte v3, v0, v1

    const/16 v1, 0xb0f

    aput-byte v3, v0, v1

    const/16 v1, 0xb10

    .line 382
    aput-byte v3, v0, v1

    const/16 v1, 0xb11

    aput-byte v3, v0, v1

    const/16 v1, 0xb12

    aput-byte v3, v0, v1

    const/16 v1, 0xb13

    aput-byte v3, v0, v1

    const/16 v1, 0xb14

    aput-byte v3, v0, v1

    const/16 v1, 0xb15

    aput-byte v3, v0, v1

    const/16 v1, 0xb16

    aput-byte v3, v0, v1

    const/16 v1, 0xb17

    aput-byte v3, v0, v1

    const/16 v1, 0xb18

    aput-byte v3, v0, v1

    const/16 v1, 0xb19

    aput-byte v3, v0, v1

    const/16 v1, 0xb1a

    aput-byte v3, v0, v1

    const/16 v1, 0xb1b

    aput-byte v3, v0, v1

    const/16 v1, 0xb1c

    aput-byte v3, v0, v1

    const/16 v1, 0xb1d

    aput-byte v3, v0, v1

    const/16 v1, 0xb1e

    aput-byte v3, v0, v1

    const/16 v1, 0xb1f

    aput-byte v3, v0, v1

    const/16 v1, 0xb20

    .line 383
    aput-byte v3, v0, v1

    const/16 v1, 0xb21

    aput-byte v3, v0, v1

    const/16 v1, 0xb22

    aput-byte v3, v0, v1

    const/16 v1, 0xb23

    aput-byte v3, v0, v1

    const/16 v1, 0xb24

    aput-byte v3, v0, v1

    const/16 v1, 0xb25

    aput-byte v3, v0, v1

    const/16 v1, 0xb26    # 4.0E-42f

    aput-byte v3, v0, v1

    const/16 v1, 0xb27    # 4.001E-42f

    aput-byte v3, v0, v1

    const/16 v1, 0xb28

    aput-byte v3, v0, v1

    const/16 v1, 0xb29

    aput-byte v3, v0, v1

    const/16 v1, 0xb2a

    aput-byte v3, v0, v1

    const/16 v1, 0xb2b

    aput-byte v3, v0, v1

    const/16 v1, 0xb2c

    aput-byte v3, v0, v1

    const/16 v1, 0xb2d

    aput-byte v3, v0, v1

    const/16 v1, 0xb2e

    aput-byte v3, v0, v1

    const/16 v1, 0xb2f

    aput-byte v3, v0, v1

    const/16 v1, 0xb30

    .line 384
    aput-byte v3, v0, v1

    const/16 v1, 0xb31

    aput-byte v3, v0, v1

    const/16 v1, 0xb32

    aput-byte v3, v0, v1

    const/16 v1, 0xb33

    aput-byte v3, v0, v1

    const/16 v1, 0xb34

    aput-byte v3, v0, v1

    const/16 v1, 0xb35

    aput-byte v3, v0, v1

    const/16 v1, 0xb36

    aput-byte v3, v0, v1

    const/16 v1, 0xb37

    aput-byte v3, v0, v1

    const/16 v1, 0xb38

    aput-byte v3, v0, v1

    const/16 v1, 0xb39

    aput-byte v3, v0, v1

    const/16 v1, 0xb3a

    aput-byte v3, v0, v1

    const/16 v1, 0xb3b

    aput-byte v3, v0, v1

    const/16 v1, 0xb3c

    aput-byte v3, v0, v1

    const/16 v1, 0xb3d

    aput-byte v3, v0, v1

    const/16 v1, 0xb3e

    aput-byte v3, v0, v1

    const/16 v1, 0xb3f

    aput-byte v3, v0, v1

    const/16 v1, 0xb40

    .line 385
    aput-byte v3, v0, v1

    const/16 v1, 0xb41

    aput-byte v3, v0, v1

    const/16 v1, 0xb42

    aput-byte v3, v0, v1

    const/16 v1, 0xb43

    aput-byte v3, v0, v1

    const/16 v1, 0xb44

    aput-byte v3, v0, v1

    const/16 v1, 0xb45

    aput-byte v3, v0, v1

    const/16 v1, 0xb46

    aput-byte v3, v0, v1

    const/16 v1, 0xb47

    aput-byte v3, v0, v1

    const/16 v1, 0xb48

    aput-byte v3, v0, v1

    const/16 v1, 0xb49

    aput-byte v3, v0, v1

    const/16 v1, 0xb4a

    aput-byte v3, v0, v1

    const/16 v1, 0xb4b

    aput-byte v3, v0, v1

    const/16 v1, 0xb4c

    aput-byte v3, v0, v1

    const/16 v1, 0xb4d

    aput-byte v3, v0, v1

    const/16 v1, 0xb4e

    aput-byte v3, v0, v1

    const/16 v1, 0xb4f

    aput-byte v3, v0, v1

    const/16 v1, 0xb50

    .line 386
    aput-byte v3, v0, v1

    const/16 v1, 0xb51

    aput-byte v3, v0, v1

    const/16 v1, 0xb52

    aput-byte v3, v0, v1

    const/16 v1, 0xb53

    aput-byte v3, v0, v1

    const/16 v1, 0xb54

    aput-byte v3, v0, v1

    const/16 v1, 0xb55

    aput-byte v3, v0, v1

    const/16 v1, 0xb56

    aput-byte v3, v0, v1

    const/16 v1, 0xb57

    aput-byte v3, v0, v1

    const/16 v1, 0xb58

    aput-byte v3, v0, v1

    const/16 v1, 0xb59

    aput-byte v3, v0, v1

    const/16 v1, 0xb5a

    aput-byte v3, v0, v1

    const/16 v1, 0xb5b

    aput-byte v3, v0, v1

    const/16 v1, 0xb5c

    aput-byte v3, v0, v1

    const/16 v1, 0xb5d

    aput-byte v3, v0, v1

    const/16 v1, 0xb5e

    aput-byte v3, v0, v1

    const/16 v1, 0xb5f

    aput-byte v3, v0, v1

    const/16 v1, 0xb60

    .line 387
    aput-byte v3, v0, v1

    const/16 v1, 0xb61

    aput-byte v3, v0, v1

    const/16 v1, 0xb62

    aput-byte v3, v0, v1

    const/16 v1, 0xb63

    aput-byte v3, v0, v1

    const/16 v1, 0xb64

    aput-byte v3, v0, v1

    const/16 v1, 0xb65

    aput-byte v3, v0, v1

    const/16 v1, 0xb66

    aput-byte v3, v0, v1

    const/16 v1, 0xb67

    aput-byte v3, v0, v1

    const/16 v1, 0xb68

    aput-byte v3, v0, v1

    const/16 v1, 0xb69

    aput-byte v3, v0, v1

    const/16 v1, 0xb6a

    aput-byte v3, v0, v1

    const/16 v1, 0xb6b

    aput-byte v3, v0, v1

    const/16 v1, 0xb6c

    aput-byte v3, v0, v1

    const/16 v1, 0xb6d

    aput-byte v3, v0, v1

    const/16 v1, 0xb6e

    aput-byte v3, v0, v1

    const/16 v1, 0xb6f

    aput-byte v3, v0, v1

    const/16 v1, 0xb70

    .line 388
    aput-byte v3, v0, v1

    const/16 v1, 0xb71

    aput-byte v3, v0, v1

    const/16 v1, 0xb72

    aput-byte v3, v0, v1

    const/16 v1, 0xb73

    aput-byte v3, v0, v1

    const/16 v1, 0xb74

    aput-byte v3, v0, v1

    const/16 v1, 0xb75

    aput-byte v3, v0, v1

    const/16 v1, 0xb76

    aput-byte v3, v0, v1

    const/16 v1, 0xb77

    aput-byte v3, v0, v1

    const/16 v1, 0xb78

    aput-byte v3, v0, v1

    const/16 v1, 0xb79

    aput-byte v3, v0, v1

    const/16 v1, 0xb7a

    aput-byte v3, v0, v1

    const/16 v1, 0xb7b

    aput-byte v3, v0, v1

    const/16 v1, 0xb7c

    aput-byte v3, v0, v1

    const/16 v1, 0xb7d

    aput-byte v3, v0, v1

    const/16 v1, 0xb7e

    aput-byte v3, v0, v1

    const/16 v1, 0xb7f

    aput-byte v3, v0, v1

    const/16 v1, 0xb80

    .line 389
    aput-byte v3, v0, v1

    const/16 v1, 0xb81

    aput-byte v3, v0, v1

    const/16 v1, 0xb82

    aput-byte v3, v0, v1

    const/16 v1, 0xb83

    aput-byte v3, v0, v1

    const/16 v1, 0xb84

    aput-byte v3, v0, v1

    const/16 v1, 0xb85

    aput-byte v3, v0, v1

    const/16 v1, 0xb86

    aput-byte v3, v0, v1

    const/16 v1, 0xb87

    aput-byte v3, v0, v1

    const/16 v1, 0xb88

    aput-byte v3, v0, v1

    const/16 v1, 0xb89

    aput-byte v3, v0, v1

    const/16 v1, 0xb8a

    aput-byte v3, v0, v1

    const/16 v1, 0xb8b

    aput-byte v3, v0, v1

    const/16 v1, 0xb8c

    aput-byte v3, v0, v1

    const/16 v1, 0xb8d

    aput-byte v3, v0, v1

    const/16 v1, 0xb8e

    aput-byte v3, v0, v1

    const/16 v1, 0xb8f

    aput-byte v3, v0, v1

    const/16 v1, 0xb90

    .line 390
    aput-byte v3, v0, v1

    const/16 v1, 0xb91

    aput-byte v3, v0, v1

    const/16 v1, 0xb92

    aput-byte v3, v0, v1

    const/16 v1, 0xb93

    aput-byte v3, v0, v1

    const/16 v1, 0xb94

    aput-byte v3, v0, v1

    const/16 v1, 0xb95

    aput-byte v3, v0, v1

    const/16 v1, 0xb96

    aput-byte v3, v0, v1

    const/16 v1, 0xb97

    aput-byte v3, v0, v1

    const/16 v1, 0xb98

    aput-byte v3, v0, v1

    const/16 v1, 0xb99

    aput-byte v3, v0, v1

    const/16 v1, 0xb9a

    aput-byte v3, v0, v1

    const/16 v1, 0xb9b

    aput-byte v3, v0, v1

    const/16 v1, 0xb9c

    aput-byte v3, v0, v1

    const/16 v1, 0xb9d

    aput-byte v3, v0, v1

    const/16 v1, 0xb9e

    aput-byte v3, v0, v1

    const/16 v1, 0xb9f

    aput-byte v3, v0, v1

    const/16 v1, 0xba0

    .line 391
    aput-byte v3, v0, v1

    const/16 v1, 0xba1

    aput-byte v3, v0, v1

    const/16 v1, 0xba2

    aput-byte v3, v0, v1

    const/16 v1, 0xba3

    aput-byte v3, v0, v1

    const/16 v1, 0xba4

    aput-byte v3, v0, v1

    const/16 v1, 0xba5

    aput-byte v3, v0, v1

    const/16 v1, 0xba6

    aput-byte v3, v0, v1

    const/16 v1, 0xba7

    aput-byte v3, v0, v1

    const/16 v1, 0xba8

    aput-byte v3, v0, v1

    const/16 v1, 0xba9

    aput-byte v3, v0, v1

    const/16 v1, 0xbaa

    aput-byte v3, v0, v1

    const/16 v1, 0xbab

    aput-byte v3, v0, v1

    const/16 v1, 0xbac

    aput-byte v3, v0, v1

    const/16 v1, 0xbad

    aput-byte v3, v0, v1

    const/16 v1, 0xbae

    aput-byte v3, v0, v1

    const/16 v1, 0xbaf

    aput-byte v3, v0, v1

    const/16 v1, 0xbb0

    .line 392
    aput-byte v3, v0, v1

    const/16 v1, 0xbb1

    aput-byte v3, v0, v1

    const/16 v1, 0xbb2

    aput-byte v3, v0, v1

    const/16 v1, 0xbb3

    aput-byte v3, v0, v1

    const/16 v1, 0xbb4

    aput-byte v3, v0, v1

    const/16 v1, 0xbb5

    aput-byte v3, v0, v1

    const/16 v1, 0xbb6

    aput-byte v3, v0, v1

    const/16 v1, 0xbb7

    aput-byte v3, v0, v1

    const/16 v1, 0xbb8

    aput-byte v3, v0, v1

    const/16 v1, 0xbb9

    aput-byte v3, v0, v1

    const/16 v1, 0xbba

    aput-byte v3, v0, v1

    const/16 v1, 0xbbb

    aput-byte v3, v0, v1

    const/16 v1, 0xbbc

    aput-byte v3, v0, v1

    const/16 v1, 0xbbd

    aput-byte v3, v0, v1

    const/16 v1, 0xbbe

    aput-byte v3, v0, v1

    const/16 v1, 0xbbf

    aput-byte v3, v0, v1

    const/16 v1, 0xbc0

    .line 393
    aput-byte v3, v0, v1

    const/16 v1, 0xbc1

    aput-byte v3, v0, v1

    const/16 v1, 0xbc2

    aput-byte v3, v0, v1

    const/16 v1, 0xbc3

    aput-byte v3, v0, v1

    const/16 v1, 0xbc4

    aput-byte v3, v0, v1

    const/16 v1, 0xbc5

    aput-byte v3, v0, v1

    const/16 v1, 0xbc6

    aput-byte v3, v0, v1

    const/16 v1, 0xbc7

    aput-byte v3, v0, v1

    const/16 v1, 0xbc8

    aput-byte v3, v0, v1

    const/16 v1, 0xbc9

    aput-byte v3, v0, v1

    const/16 v1, 0xbca

    aput-byte v3, v0, v1

    const/16 v1, 0xbcb

    aput-byte v3, v0, v1

    const/16 v1, 0xbcc

    aput-byte v3, v0, v1

    const/16 v1, 0xbcd

    aput-byte v3, v0, v1

    const/16 v1, 0xbce

    aput-byte v3, v0, v1

    const/16 v1, 0xbcf

    aput-byte v3, v0, v1

    const/16 v1, 0xbd0

    .line 394
    aput-byte v3, v0, v1

    const/16 v1, 0xbd1

    aput-byte v3, v0, v1

    const/16 v1, 0xbd2

    aput-byte v3, v0, v1

    const/16 v1, 0xbd3

    aput-byte v3, v0, v1

    const/16 v1, 0xbd4

    aput-byte v3, v0, v1

    const/16 v1, 0xbd5

    aput-byte v3, v0, v1

    const/16 v1, 0xbd6

    aput-byte v3, v0, v1

    const/16 v1, 0xbd7

    aput-byte v3, v0, v1

    const/16 v1, 0xbd8

    aput-byte v3, v0, v1

    const/16 v1, 0xbd9

    aput-byte v3, v0, v1

    const/16 v1, 0xbda

    aput-byte v3, v0, v1

    const/16 v1, 0xbdb

    aput-byte v3, v0, v1

    const/16 v1, 0xbdc

    aput-byte v3, v0, v1

    const/16 v1, 0xbdd

    aput-byte v3, v0, v1

    const/16 v1, 0xbde

    aput-byte v3, v0, v1

    const/16 v1, 0xbdf

    aput-byte v3, v0, v1

    const/16 v1, 0xbe0

    .line 395
    aput-byte v3, v0, v1

    const/16 v1, 0xbe1

    aput-byte v3, v0, v1

    const/16 v1, 0xbe2

    aput-byte v3, v0, v1

    const/16 v1, 0xbe3

    aput-byte v3, v0, v1

    const/16 v1, 0xbe4

    aput-byte v3, v0, v1

    const/16 v1, 0xbe5

    aput-byte v3, v0, v1

    const/16 v1, 0xbe6

    aput-byte v3, v0, v1

    const/16 v1, 0xbe7

    aput-byte v3, v0, v1

    const/16 v1, 0xbe8

    aput-byte v3, v0, v1

    const/16 v1, 0xbe9

    aput-byte v3, v0, v1

    const/16 v1, 0xbea

    aput-byte v3, v0, v1

    const/16 v1, 0xbeb

    aput-byte v3, v0, v1

    const/16 v1, 0xbec

    aput-byte v3, v0, v1

    const/16 v1, 0xbed

    aput-byte v3, v0, v1

    const/16 v1, 0xbee

    aput-byte v3, v0, v1

    const/16 v1, 0xbef

    aput-byte v3, v0, v1

    const/16 v1, 0xbf0

    .line 396
    aput-byte v3, v0, v1

    const/16 v1, 0xbf1

    aput-byte v3, v0, v1

    const/16 v1, 0xbf2

    aput-byte v3, v0, v1

    const/16 v1, 0xbf3

    aput-byte v3, v0, v1

    const/16 v1, 0xbf4

    aput-byte v3, v0, v1

    const/16 v1, 0xbf5

    aput-byte v3, v0, v1

    const/16 v1, 0xbf6

    aput-byte v3, v0, v1

    const/16 v1, 0xbf7

    aput-byte v3, v0, v1

    const/16 v1, 0xbf8

    aput-byte v3, v0, v1

    const/16 v1, 0xbf9

    aput-byte v3, v0, v1

    const/16 v1, 0xbfa

    aput-byte v3, v0, v1

    const/16 v1, 0xbfb

    aput-byte v3, v0, v1

    const/16 v1, 0xbfc

    aput-byte v3, v0, v1

    const/16 v1, 0xbfd

    aput-byte v3, v0, v1

    const/16 v1, 0xbfe

    aput-byte v3, v0, v1

    const/16 v1, 0xbff

    aput-byte v3, v0, v1

    const/16 v1, 0xc00

    .line 397
    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc01

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xc02

    aput-byte v6, v0, v1

    const/16 v1, 0xc03

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0xc04

    aput-byte v4, v0, v1

    const/16 v1, 0xc05

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0xc06

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0xc07

    aput-byte v4, v0, v1

    const/16 v1, 0xc08

    aput-byte v3, v0, v1

    const/16 v1, 0xc09

    aput-byte v3, v0, v1

    const/16 v1, 0xc0a

    aput-byte v3, v0, v1

    const/16 v1, 0xc0b

    aput-byte v3, v0, v1

    const/16 v1, 0xc0c

    aput-byte v3, v0, v1

    const/16 v1, 0xc0d

    aput-byte v3, v0, v1

    const/16 v1, 0xc0e

    aput-byte v3, v0, v1

    const/16 v1, 0xc0f

    aput-byte v3, v0, v1

    const/16 v1, 0xc10

    .line 398
    aput-byte v3, v0, v1

    const/16 v1, 0xc11

    aput-byte v3, v0, v1

    const/16 v1, 0xc12

    aput-byte v3, v0, v1

    const/16 v1, 0xc13

    aput-byte v3, v0, v1

    const/16 v1, 0xc14

    aput-byte v3, v0, v1

    const/16 v1, 0xc15

    aput-byte v3, v0, v1

    const/16 v1, 0xc16

    aput-byte v3, v0, v1

    const/16 v1, 0xc17

    aput-byte v3, v0, v1

    const/16 v1, 0xc18

    aput-byte v3, v0, v1

    const/16 v1, 0xc19

    aput-byte v3, v0, v1

    const/16 v1, 0xc1a

    aput-byte v3, v0, v1

    const/16 v1, 0xc1b

    aput-byte v3, v0, v1

    const/16 v1, 0xc1c

    aput-byte v3, v0, v1

    const/16 v1, 0xc1d

    aput-byte v3, v0, v1

    const/16 v1, 0xc1e

    aput-byte v3, v0, v1

    const/16 v1, 0xc1f

    aput-byte v3, v0, v1

    const/16 v1, 0xc20

    .line 399
    aput-byte v3, v0, v1

    const/16 v1, 0xc21

    aput-byte v3, v0, v1

    const/16 v1, 0xc22

    aput-byte v3, v0, v1

    const/16 v1, 0xc23

    aput-byte v3, v0, v1

    const/16 v1, 0xc24

    aput-byte v3, v0, v1

    const/16 v1, 0xc25

    aput-byte v3, v0, v1

    const/16 v1, 0xc26

    aput-byte v3, v0, v1

    const/16 v1, 0xc27

    aput-byte v3, v0, v1

    const/16 v1, 0xc28

    aput-byte v3, v0, v1

    const/16 v1, 0xc29

    aput-byte v3, v0, v1

    const/16 v1, 0xc2a

    aput-byte v3, v0, v1

    const/16 v1, 0xc2b

    aput-byte v3, v0, v1

    const/16 v1, 0xc2c

    aput-byte v3, v0, v1

    const/16 v1, 0xc2d

    aput-byte v3, v0, v1

    const/16 v1, 0xc2e

    aput-byte v3, v0, v1

    const/16 v1, 0xc2f

    aput-byte v3, v0, v1

    const/16 v1, 0xc30

    .line 400
    aput-byte v3, v0, v1

    const/16 v1, 0xc31

    aput-byte v3, v0, v1

    const/16 v1, 0xc32

    aput-byte v3, v0, v1

    const/16 v1, 0xc33

    aput-byte v3, v0, v1

    const/16 v1, 0xc34

    aput-byte v3, v0, v1

    const/16 v1, 0xc35

    aput-byte v3, v0, v1

    const/16 v1, 0xc36

    aput-byte v3, v0, v1

    const/16 v1, 0xc37

    aput-byte v3, v0, v1

    const/16 v1, 0xc38

    aput-byte v3, v0, v1

    const/16 v1, 0xc39

    aput-byte v3, v0, v1

    const/16 v1, 0xc3a

    aput-byte v3, v0, v1

    const/16 v1, 0xc3b

    aput-byte v3, v0, v1

    const/16 v1, 0xc3c

    aput-byte v3, v0, v1

    const/16 v1, 0xc3d

    aput-byte v3, v0, v1

    const/16 v1, 0xc3e

    aput-byte v3, v0, v1

    const/16 v1, 0xc3f

    aput-byte v3, v0, v1

    const/16 v1, 0xc40

    .line 401
    aput-byte v3, v0, v1

    const/16 v1, 0xc41

    aput-byte v3, v0, v1

    const/16 v1, 0xc42

    aput-byte v3, v0, v1

    const/16 v1, 0xc43

    aput-byte v3, v0, v1

    const/16 v1, 0xc44

    aput-byte v3, v0, v1

    const/16 v1, 0xc45

    aput-byte v3, v0, v1

    const/16 v1, 0xc46

    aput-byte v3, v0, v1

    const/16 v1, 0xc47

    aput-byte v3, v0, v1

    const/16 v1, 0xc48

    aput-byte v3, v0, v1

    const/16 v1, 0xc49

    aput-byte v3, v0, v1

    const/16 v1, 0xc4a

    aput-byte v3, v0, v1

    const/16 v1, 0xc4b

    aput-byte v3, v0, v1

    const/16 v1, 0xc4c

    aput-byte v3, v0, v1

    const/16 v1, 0xc4d

    aput-byte v3, v0, v1

    const/16 v1, 0xc4e

    aput-byte v3, v0, v1

    const/16 v1, 0xc4f

    aput-byte v3, v0, v1

    const/16 v1, 0xc50

    .line 402
    aput-byte v3, v0, v1

    const/16 v1, 0xc51

    aput-byte v3, v0, v1

    const/16 v1, 0xc52

    aput-byte v3, v0, v1

    const/16 v1, 0xc53

    aput-byte v3, v0, v1

    const/16 v1, 0xc54

    aput-byte v3, v0, v1

    const/16 v1, 0xc55

    aput-byte v3, v0, v1

    const/16 v1, 0xc56

    aput-byte v3, v0, v1

    const/16 v1, 0xc57

    aput-byte v3, v0, v1

    const/16 v1, 0xc58

    aput-byte v3, v0, v1

    const/16 v1, 0xc59

    aput-byte v3, v0, v1

    const/16 v1, 0xc5a

    aput-byte v3, v0, v1

    const/16 v1, 0xc5b

    aput-byte v3, v0, v1

    const/16 v1, 0xc5c

    aput-byte v3, v0, v1

    const/16 v1, 0xc5d

    aput-byte v3, v0, v1

    const/16 v1, 0xc5e

    aput-byte v3, v0, v1

    const/16 v1, 0xc5f

    aput-byte v3, v0, v1

    const/16 v1, 0xc60

    .line 403
    aput-byte v3, v0, v1

    const/16 v1, 0xc61

    aput-byte v3, v0, v1

    const/16 v1, 0xc62

    aput-byte v3, v0, v1

    const/16 v1, 0xc63

    aput-byte v3, v0, v1

    const/16 v1, 0xc64

    aput-byte v3, v0, v1

    const/16 v1, 0xc65

    aput-byte v3, v0, v1

    const/16 v1, 0xc66

    aput-byte v3, v0, v1

    const/16 v1, 0xc67

    aput-byte v3, v0, v1

    const/16 v1, 0xc68

    aput-byte v3, v0, v1

    const/16 v1, 0xc69

    aput-byte v3, v0, v1

    const/16 v1, 0xc6a

    aput-byte v3, v0, v1

    const/16 v1, 0xc6b

    aput-byte v3, v0, v1

    const/16 v1, 0xc6c

    aput-byte v3, v0, v1

    const/16 v1, 0xc6d

    aput-byte v3, v0, v1

    const/16 v1, 0xc6e

    aput-byte v3, v0, v1

    const/16 v1, 0xc6f

    aput-byte v3, v0, v1

    const/16 v1, 0xc70

    .line 404
    aput-byte v3, v0, v1

    const/16 v1, 0xc71

    aput-byte v3, v0, v1

    const/16 v1, 0xc72

    aput-byte v3, v0, v1

    const/16 v1, 0xc73

    aput-byte v3, v0, v1

    const/16 v1, 0xc74

    aput-byte v5, v0, v1

    const/16 v1, 0xc75

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc76

    const/16 v2, -0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xc77

    aput-byte v7, v0, v1

    const/16 v1, 0xc78

    const/4 v2, -0x6

    aput-byte v2, v0, v1

    const/16 v1, 0xc79

    const/16 v2, -0x22

    aput-byte v2, v0, v1

    const/16 v1, 0xc7a

    aput-byte v5, v0, v1

    const/16 v1, 0xc7b

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0xc7c

    aput-byte v7, v0, v1

    const/16 v1, 0xc7e

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xc7f

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0xc86

    .line 405
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0xc87

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0xc8b

    aput-byte v3, v0, v1

    const/16 v1, 0xc8c

    aput-byte v3, v0, v1

    const/16 v1, 0xc8d

    aput-byte v3, v0, v1

    const/16 v1, 0xc8e

    aput-byte v3, v0, v1

    const/16 v1, 0xc8f

    aput-byte v3, v0, v1

    const/16 v1, 0xc90

    .line 406
    aput-byte v3, v0, v1

    const/16 v1, 0xc91

    aput-byte v3, v0, v1

    const/16 v1, 0xc92

    aput-byte v3, v0, v1

    const/16 v1, 0xc93

    aput-byte v3, v0, v1

    const/16 v1, 0xc94

    aput-byte v3, v0, v1

    const/16 v1, 0xc95

    aput-byte v3, v0, v1

    const/16 v1, 0xc96

    aput-byte v3, v0, v1

    const/16 v1, 0xc97

    aput-byte v3, v0, v1

    const/16 v1, 0xc98

    aput-byte v3, v0, v1

    const/16 v1, 0xc99

    aput-byte v3, v0, v1

    const/16 v1, 0xc9a

    aput-byte v3, v0, v1

    const/16 v1, 0xc9b

    aput-byte v3, v0, v1

    const/16 v1, 0xc9c

    aput-byte v3, v0, v1

    const/16 v1, 0xc9d

    aput-byte v3, v0, v1

    const/16 v1, 0xc9e

    aput-byte v3, v0, v1

    const/16 v1, 0xc9f

    aput-byte v3, v0, v1

    const/16 v1, 0xca0

    .line 407
    aput-byte v3, v0, v1

    const/16 v1, 0xca1

    aput-byte v3, v0, v1

    const/16 v1, 0xca2

    aput-byte v3, v0, v1

    const/16 v1, 0xca3

    aput-byte v3, v0, v1

    const/16 v1, 0xca4

    aput-byte v3, v0, v1

    const/16 v1, 0xca5

    aput-byte v3, v0, v1

    const/16 v1, 0xca6

    aput-byte v3, v0, v1

    const/16 v1, 0xca7

    aput-byte v3, v0, v1

    const/16 v1, 0xca8

    aput-byte v3, v0, v1

    const/16 v1, 0xca9

    aput-byte v3, v0, v1

    const/16 v1, 0xcaa

    aput-byte v3, v0, v1

    const/16 v1, 0xcab

    aput-byte v3, v0, v1

    const/16 v1, 0xcac

    aput-byte v3, v0, v1

    const/16 v1, 0xcad

    aput-byte v3, v0, v1

    const/16 v1, 0xcae

    aput-byte v3, v0, v1

    const/16 v1, 0xcaf

    aput-byte v3, v0, v1

    const/16 v1, 0xcb0

    .line 408
    aput-byte v3, v0, v1

    const/16 v1, 0xcb1

    aput-byte v3, v0, v1

    const/16 v1, 0xcb2

    aput-byte v3, v0, v1

    const/16 v1, 0xcb3

    aput-byte v3, v0, v1

    const/16 v1, 0xcb4

    aput-byte v3, v0, v1

    const/16 v1, 0xcb5

    aput-byte v3, v0, v1

    const/16 v1, 0xcb6

    aput-byte v3, v0, v1

    const/16 v1, 0xcb7

    aput-byte v3, v0, v1

    const/16 v1, 0xcb8

    aput-byte v3, v0, v1

    const/16 v1, 0xcb9

    aput-byte v3, v0, v1

    const/16 v1, 0xcba

    aput-byte v3, v0, v1

    const/16 v1, 0xcbb

    aput-byte v3, v0, v1

    const/16 v1, 0xcbc

    aput-byte v3, v0, v1

    const/16 v1, 0xcbd

    aput-byte v3, v0, v1

    const/16 v1, 0xcbe

    aput-byte v3, v0, v1

    const/16 v1, 0xcbf

    aput-byte v3, v0, v1

    const/16 v1, 0xcc0

    .line 409
    aput-byte v3, v0, v1

    const/16 v1, 0xcc1

    aput-byte v3, v0, v1

    const/16 v1, 0xcc2

    aput-byte v3, v0, v1

    const/16 v1, 0xcc3

    aput-byte v3, v0, v1

    const/16 v1, 0xcc4

    aput-byte v3, v0, v1

    const/16 v1, 0xcc5

    aput-byte v3, v0, v1

    const/16 v1, 0xcc6

    aput-byte v3, v0, v1

    const/16 v1, 0xcc7

    aput-byte v3, v0, v1

    const/16 v1, 0xcc8

    aput-byte v3, v0, v1

    const/16 v1, 0xcc9

    aput-byte v3, v0, v1

    const/16 v1, 0xcca

    aput-byte v3, v0, v1

    const/16 v1, 0xccb

    aput-byte v3, v0, v1

    const/16 v1, 0xccc

    aput-byte v3, v0, v1

    const/16 v1, 0xccd

    aput-byte v3, v0, v1

    const/16 v1, 0xcce

    aput-byte v3, v0, v1

    const/16 v1, 0xccf

    aput-byte v3, v0, v1

    const/16 v1, 0xcd0

    .line 410
    aput-byte v3, v0, v1

    const/16 v1, 0xcd1

    aput-byte v3, v0, v1

    const/16 v1, 0xcd2

    aput-byte v3, v0, v1

    const/16 v1, 0xcd3

    aput-byte v3, v0, v1

    const/16 v1, 0xcd4

    aput-byte v3, v0, v1

    const/16 v1, 0xcd5

    aput-byte v3, v0, v1

    const/16 v1, 0xcd6

    aput-byte v3, v0, v1

    const/16 v1, 0xcd7

    aput-byte v3, v0, v1

    const/16 v1, 0xcd8

    aput-byte v3, v0, v1

    const/16 v1, 0xcd9

    aput-byte v3, v0, v1

    const/16 v1, 0xcda

    aput-byte v3, v0, v1

    const/16 v1, 0xcdb

    aput-byte v3, v0, v1

    const/16 v1, 0xcdc

    aput-byte v3, v0, v1

    const/16 v1, 0xcdd

    aput-byte v3, v0, v1

    const/16 v1, 0xcde

    aput-byte v3, v0, v1

    const/16 v1, 0xcdf

    aput-byte v3, v0, v1

    const/16 v1, 0xce0

    .line 411
    aput-byte v3, v0, v1

    const/16 v1, 0xce1

    aput-byte v3, v0, v1

    const/16 v1, 0xce2

    aput-byte v3, v0, v1

    const/16 v1, 0xce3

    aput-byte v3, v0, v1

    const/16 v1, 0xce4

    aput-byte v3, v0, v1

    const/16 v1, 0xce5

    aput-byte v3, v0, v1

    const/16 v1, 0xce6

    aput-byte v3, v0, v1

    const/16 v1, 0xce7

    aput-byte v3, v0, v1

    const/16 v1, 0xce8

    aput-byte v3, v0, v1

    const/16 v1, 0xce9

    aput-byte v3, v0, v1

    const/16 v1, 0xcea

    aput-byte v3, v0, v1

    const/16 v1, 0xceb

    aput-byte v3, v0, v1

    const/16 v1, 0xcec

    aput-byte v3, v0, v1

    const/16 v1, 0xced

    aput-byte v3, v0, v1

    const/16 v1, 0xcee

    aput-byte v3, v0, v1

    const/16 v1, 0xcef

    aput-byte v3, v0, v1

    const/16 v1, 0xcf0

    .line 412
    aput-byte v3, v0, v1

    const/16 v1, 0xcf1

    aput-byte v3, v0, v1

    const/16 v1, 0xcf2

    aput-byte v3, v0, v1

    const/16 v1, 0xcf3

    aput-byte v3, v0, v1

    const/16 v1, 0xcf4

    aput-byte v3, v0, v1

    const/16 v1, 0xcf5

    aput-byte v3, v0, v1

    const/16 v1, 0xcf6

    aput-byte v3, v0, v1

    const/16 v1, 0xcf7

    aput-byte v3, v0, v1

    const/16 v1, 0xcf8

    aput-byte v3, v0, v1

    const/16 v1, 0xcf9

    aput-byte v3, v0, v1

    const/16 v1, 0xcfa

    aput-byte v3, v0, v1

    const/16 v1, 0xcfb

    aput-byte v3, v0, v1

    const/16 v1, 0xcfc

    aput-byte v3, v0, v1

    const/16 v1, 0xcfd

    aput-byte v3, v0, v1

    const/16 v1, 0xcfe

    aput-byte v3, v0, v1

    const/16 v1, 0xcff

    aput-byte v3, v0, v1

    const/16 v1, 0xd00

    .line 413
    aput-byte v3, v0, v1

    const/16 v1, 0xd01

    aput-byte v3, v0, v1

    const/16 v1, 0xd02

    aput-byte v3, v0, v1

    const/16 v1, 0xd03

    aput-byte v3, v0, v1

    const/16 v1, 0xd04

    aput-byte v3, v0, v1

    const/16 v1, 0xd05

    aput-byte v3, v0, v1

    const/16 v1, 0xd06

    aput-byte v3, v0, v1

    const/16 v1, 0xd07

    aput-byte v3, v0, v1

    const/16 v1, 0xd08

    aput-byte v3, v0, v1

    const/16 v1, 0xd09

    aput-byte v3, v0, v1

    const/16 v1, 0xd0a

    aput-byte v3, v0, v1

    const/16 v1, 0xd0b

    aput-byte v3, v0, v1

    const/16 v1, 0xd0c

    aput-byte v3, v0, v1

    const/16 v1, 0xd0d

    aput-byte v3, v0, v1

    const/16 v1, 0xd0e

    aput-byte v3, v0, v1

    const/16 v1, 0xd0f

    aput-byte v3, v0, v1

    const/16 v1, 0xd10

    .line 414
    aput-byte v3, v0, v1

    const/16 v1, 0xd11

    aput-byte v3, v0, v1

    const/16 v1, 0xd12

    aput-byte v3, v0, v1

    const/16 v1, 0xd13

    aput-byte v3, v0, v1

    const/16 v1, 0xd14

    aput-byte v3, v0, v1

    const/16 v1, 0xd15

    aput-byte v3, v0, v1

    const/16 v1, 0xd16

    aput-byte v3, v0, v1

    const/16 v1, 0xd17

    aput-byte v3, v0, v1

    const/16 v1, 0xd18

    aput-byte v3, v0, v1

    const/16 v1, 0xd19

    aput-byte v3, v0, v1

    const/16 v1, 0xd1a

    aput-byte v3, v0, v1

    const/16 v1, 0xd1b

    aput-byte v3, v0, v1

    const/16 v1, 0xd1c

    aput-byte v3, v0, v1

    const/16 v1, 0xd1d

    aput-byte v3, v0, v1

    const/16 v1, 0xd1e

    aput-byte v3, v0, v1

    const/16 v1, 0xd1f

    aput-byte v3, v0, v1

    const/16 v1, 0xd20

    .line 415
    aput-byte v3, v0, v1

    const/16 v1, 0xd21

    aput-byte v3, v0, v1

    const/16 v1, 0xd22

    aput-byte v3, v0, v1

    const/16 v1, 0xd23

    aput-byte v3, v0, v1

    const/16 v1, 0xd24

    aput-byte v3, v0, v1

    const/16 v1, 0xd25

    aput-byte v3, v0, v1

    const/16 v1, 0xd26

    aput-byte v3, v0, v1

    const/16 v1, 0xd27

    aput-byte v3, v0, v1

    const/16 v1, 0xd28

    aput-byte v3, v0, v1

    const/16 v1, 0xd29

    aput-byte v3, v0, v1

    const/16 v1, 0xd2a

    aput-byte v3, v0, v1

    const/16 v1, 0xd2b

    aput-byte v3, v0, v1

    const/16 v1, 0xd2c

    aput-byte v3, v0, v1

    const/16 v1, 0xd2d

    aput-byte v3, v0, v1

    const/16 v1, 0xd2e

    aput-byte v3, v0, v1

    const/16 v1, 0xd2f

    aput-byte v3, v0, v1

    const/16 v1, 0xd30

    .line 416
    aput-byte v3, v0, v1

    const/16 v1, 0xd31

    aput-byte v3, v0, v1

    const/16 v1, 0xd32

    aput-byte v3, v0, v1

    const/16 v1, 0xd33

    aput-byte v3, v0, v1

    const/16 v1, 0xd34

    aput-byte v3, v0, v1

    const/16 v1, 0xd35

    aput-byte v3, v0, v1

    const/16 v1, 0xd36

    aput-byte v3, v0, v1

    const/16 v1, 0xd37

    aput-byte v3, v0, v1

    const/16 v1, 0xd38

    aput-byte v3, v0, v1

    const/16 v1, 0xd39

    aput-byte v3, v0, v1

    const/16 v1, 0xd3a

    aput-byte v3, v0, v1

    const/16 v1, 0xd3b

    aput-byte v3, v0, v1

    const/16 v1, 0xd3c

    aput-byte v3, v0, v1

    const/16 v1, 0xd3d

    aput-byte v3, v0, v1

    const/16 v1, 0xd3e

    aput-byte v3, v0, v1

    const/16 v1, 0xd3f

    aput-byte v3, v0, v1

    const/16 v1, 0xd40

    .line 417
    aput-byte v3, v0, v1

    const/16 v1, 0xd41

    aput-byte v3, v0, v1

    const/16 v1, 0xd42

    aput-byte v3, v0, v1

    const/16 v1, 0xd43

    aput-byte v3, v0, v1

    const/16 v1, 0xd44

    aput-byte v3, v0, v1

    const/16 v1, 0xd45

    aput-byte v3, v0, v1

    const/16 v1, 0xd46

    aput-byte v3, v0, v1

    const/16 v1, 0xd47

    aput-byte v3, v0, v1

    const/16 v1, 0xd48

    aput-byte v3, v0, v1

    const/16 v1, 0xd49

    aput-byte v3, v0, v1

    const/16 v1, 0xd4a

    aput-byte v3, v0, v1

    const/16 v1, 0xd4b

    aput-byte v3, v0, v1

    const/16 v1, 0xd4c

    aput-byte v3, v0, v1

    const/16 v1, 0xd4d

    aput-byte v3, v0, v1

    const/16 v1, 0xd4e

    aput-byte v3, v0, v1

    const/16 v1, 0xd4f

    aput-byte v3, v0, v1

    const/16 v1, 0xd50

    .line 418
    aput-byte v3, v0, v1

    const/16 v1, 0xd51

    aput-byte v3, v0, v1

    const/16 v1, 0xd52

    aput-byte v3, v0, v1

    const/16 v1, 0xd53

    aput-byte v3, v0, v1

    const/16 v1, 0xd54

    aput-byte v3, v0, v1

    const/16 v1, 0xd55

    aput-byte v3, v0, v1

    const/16 v1, 0xd56

    aput-byte v3, v0, v1

    const/16 v1, 0xd57

    aput-byte v3, v0, v1

    const/16 v1, 0xd58

    aput-byte v3, v0, v1

    const/16 v1, 0xd59

    aput-byte v3, v0, v1

    const/16 v1, 0xd5a

    aput-byte v3, v0, v1

    const/16 v1, 0xd5b

    aput-byte v3, v0, v1

    const/16 v1, 0xd5c

    aput-byte v3, v0, v1

    const/16 v1, 0xd5d

    aput-byte v3, v0, v1

    const/16 v1, 0xd5e

    aput-byte v3, v0, v1

    const/16 v1, 0xd5f

    aput-byte v3, v0, v1

    const/16 v1, 0xd60

    .line 419
    aput-byte v3, v0, v1

    const/16 v1, 0xd61

    aput-byte v3, v0, v1

    const/16 v1, 0xd62

    aput-byte v3, v0, v1

    const/16 v1, 0xd63

    aput-byte v3, v0, v1

    const/16 v1, 0xd64

    aput-byte v3, v0, v1

    const/16 v1, 0xd65

    aput-byte v3, v0, v1

    const/16 v1, 0xd66

    aput-byte v3, v0, v1

    const/16 v1, 0xd67

    aput-byte v3, v0, v1

    const/16 v1, 0xd68

    aput-byte v3, v0, v1

    const/16 v1, 0xd69

    aput-byte v3, v0, v1

    const/16 v1, 0xd6a

    aput-byte v3, v0, v1

    const/16 v1, 0xd6b

    aput-byte v3, v0, v1

    const/16 v1, 0xd6c

    aput-byte v3, v0, v1

    const/16 v1, 0xd6d

    aput-byte v3, v0, v1

    const/16 v1, 0xd6e

    aput-byte v3, v0, v1

    const/16 v1, 0xd6f

    aput-byte v3, v0, v1

    const/16 v1, 0xd70

    .line 420
    aput-byte v3, v0, v1

    const/16 v1, 0xd71

    aput-byte v3, v0, v1

    const/16 v1, 0xd72

    aput-byte v3, v0, v1

    const/16 v1, 0xd73

    aput-byte v3, v0, v1

    const/16 v1, 0xd74

    aput-byte v3, v0, v1

    const/16 v1, 0xd75

    aput-byte v3, v0, v1

    const/16 v1, 0xd76

    aput-byte v3, v0, v1

    const/16 v1, 0xd77

    aput-byte v3, v0, v1

    const/16 v1, 0xd78

    aput-byte v3, v0, v1

    const/16 v1, 0xd79

    aput-byte v3, v0, v1

    const/16 v1, 0xd7a

    aput-byte v3, v0, v1

    const/16 v1, 0xd7b

    aput-byte v3, v0, v1

    const/16 v1, 0xd7c

    aput-byte v3, v0, v1

    const/16 v1, 0xd7d

    aput-byte v3, v0, v1

    const/16 v1, 0xd7e

    aput-byte v3, v0, v1

    const/16 v1, 0xd7f

    aput-byte v3, v0, v1

    const/16 v1, 0xd80

    .line 421
    aput-byte v3, v0, v1

    const/16 v1, 0xd81

    aput-byte v3, v0, v1

    const/16 v1, 0xd82

    aput-byte v3, v0, v1

    const/16 v1, 0xd83

    aput-byte v3, v0, v1

    const/16 v1, 0xd84

    aput-byte v3, v0, v1

    const/16 v1, 0xd85

    aput-byte v3, v0, v1

    const/16 v1, 0xd86

    aput-byte v3, v0, v1

    const/16 v1, 0xd87

    aput-byte v3, v0, v1

    const/16 v1, 0xd88

    aput-byte v3, v0, v1

    const/16 v1, 0xd89

    aput-byte v3, v0, v1

    const/16 v1, 0xd8a

    aput-byte v3, v0, v1

    const/16 v1, 0xd8b

    aput-byte v3, v0, v1

    const/16 v1, 0xd8c

    aput-byte v3, v0, v1

    const/16 v1, 0xd8d

    aput-byte v3, v0, v1

    const/16 v1, 0xd8e

    aput-byte v3, v0, v1

    const/16 v1, 0xd8f

    aput-byte v3, v0, v1

    const/16 v1, 0xd90

    .line 422
    aput-byte v3, v0, v1

    const/16 v1, 0xd91

    aput-byte v3, v0, v1

    const/16 v1, 0xd92

    aput-byte v3, v0, v1

    const/16 v1, 0xd93

    aput-byte v3, v0, v1

    const/16 v1, 0xd94

    aput-byte v3, v0, v1

    const/16 v1, 0xd95

    aput-byte v3, v0, v1

    const/16 v1, 0xd96

    aput-byte v3, v0, v1

    const/16 v1, 0xd97

    aput-byte v3, v0, v1

    const/16 v1, 0xd98

    aput-byte v3, v0, v1

    const/16 v1, 0xd99

    aput-byte v3, v0, v1

    const/16 v1, 0xd9a

    aput-byte v3, v0, v1

    const/16 v1, 0xd9b

    aput-byte v3, v0, v1

    const/16 v1, 0xd9c

    aput-byte v3, v0, v1

    const/16 v1, 0xd9d

    aput-byte v3, v0, v1

    const/16 v1, 0xd9e

    aput-byte v3, v0, v1

    const/16 v1, 0xd9f

    aput-byte v3, v0, v1

    const/16 v1, 0xda0

    .line 423
    aput-byte v3, v0, v1

    const/16 v1, 0xda1

    aput-byte v3, v0, v1

    const/16 v1, 0xda2

    aput-byte v3, v0, v1

    const/16 v1, 0xda3

    aput-byte v3, v0, v1

    const/16 v1, 0xda4

    aput-byte v3, v0, v1

    const/16 v1, 0xda5

    aput-byte v3, v0, v1

    const/16 v1, 0xda6

    aput-byte v3, v0, v1

    const/16 v1, 0xda7

    aput-byte v3, v0, v1

    const/16 v1, 0xda8

    aput-byte v3, v0, v1

    const/16 v1, 0xda9

    aput-byte v3, v0, v1

    const/16 v1, 0xdaa

    aput-byte v3, v0, v1

    const/16 v1, 0xdab

    aput-byte v3, v0, v1

    const/16 v1, 0xdac

    aput-byte v3, v0, v1

    const/16 v1, 0xdad

    aput-byte v3, v0, v1

    const/16 v1, 0xdae

    aput-byte v3, v0, v1

    const/16 v1, 0xdaf

    aput-byte v3, v0, v1

    const/16 v1, 0xdb0

    .line 424
    aput-byte v3, v0, v1

    const/16 v1, 0xdb1

    aput-byte v3, v0, v1

    const/16 v1, 0xdb2

    aput-byte v3, v0, v1

    const/16 v1, 0xdb3

    aput-byte v3, v0, v1

    const/16 v1, 0xdb4

    aput-byte v3, v0, v1

    const/16 v1, 0xdb5

    aput-byte v3, v0, v1

    const/16 v1, 0xdb6

    aput-byte v3, v0, v1

    const/16 v1, 0xdb7

    aput-byte v3, v0, v1

    const/16 v1, 0xdb8

    aput-byte v3, v0, v1

    const/16 v1, 0xdb9

    aput-byte v3, v0, v1

    const/16 v1, 0xdba

    aput-byte v3, v0, v1

    const/16 v1, 0xdbb

    aput-byte v3, v0, v1

    const/16 v1, 0xdbc

    aput-byte v3, v0, v1

    const/16 v1, 0xdbd

    aput-byte v3, v0, v1

    const/16 v1, 0xdbe

    aput-byte v3, v0, v1

    const/16 v1, 0xdbf

    aput-byte v3, v0, v1

    const/16 v1, 0xdc0

    .line 425
    aput-byte v3, v0, v1

    const/16 v1, 0xdc1

    aput-byte v3, v0, v1

    const/16 v1, 0xdc2

    aput-byte v3, v0, v1

    const/16 v1, 0xdc3

    aput-byte v3, v0, v1

    const/16 v1, 0xdc4

    aput-byte v3, v0, v1

    const/16 v1, 0xdc5

    aput-byte v3, v0, v1

    const/16 v1, 0xdc6

    aput-byte v3, v0, v1

    const/16 v1, 0xdc7

    aput-byte v3, v0, v1

    const/16 v1, 0xdc8

    aput-byte v3, v0, v1

    const/16 v1, 0xdc9

    aput-byte v3, v0, v1

    const/16 v1, 0xdca

    aput-byte v3, v0, v1

    const/16 v1, 0xdcb

    aput-byte v3, v0, v1

    const/16 v1, 0xdcc

    aput-byte v3, v0, v1

    const/16 v1, 0xdcd

    aput-byte v3, v0, v1

    const/16 v1, 0xdce

    aput-byte v3, v0, v1

    const/16 v1, 0xdcf

    aput-byte v3, v0, v1

    const/16 v1, 0xdd0

    .line 426
    aput-byte v3, v0, v1

    const/16 v1, 0xdd1

    aput-byte v3, v0, v1

    const/16 v1, 0xdd2

    aput-byte v3, v0, v1

    const/16 v1, 0xdd3

    aput-byte v3, v0, v1

    const/16 v1, 0xdd4

    aput-byte v3, v0, v1

    const/16 v1, 0xdd5

    aput-byte v3, v0, v1

    const/16 v1, 0xdd6

    aput-byte v3, v0, v1

    const/16 v1, 0xdd7

    aput-byte v3, v0, v1

    const/16 v1, 0xdd8

    aput-byte v3, v0, v1

    const/16 v1, 0xdd9

    aput-byte v3, v0, v1

    const/16 v1, 0xdda

    aput-byte v3, v0, v1

    const/16 v1, 0xddb

    aput-byte v3, v0, v1

    const/16 v1, 0xddc

    aput-byte v3, v0, v1

    const/16 v1, 0xddd

    aput-byte v3, v0, v1

    const/16 v1, 0xdde

    aput-byte v3, v0, v1

    const/16 v1, 0xddf

    aput-byte v3, v0, v1

    const/16 v1, 0xde0

    .line 427
    aput-byte v3, v0, v1

    const/16 v1, 0xde1

    aput-byte v3, v0, v1

    const/16 v1, 0xde2

    aput-byte v3, v0, v1

    const/16 v1, 0xde3

    aput-byte v3, v0, v1

    const/16 v1, 0xde4

    aput-byte v3, v0, v1

    const/16 v1, 0xde5

    aput-byte v3, v0, v1

    const/16 v1, 0xde6

    aput-byte v3, v0, v1

    const/16 v1, 0xde7

    aput-byte v3, v0, v1

    const/16 v1, 0xde8

    aput-byte v3, v0, v1

    const/16 v1, 0xde9

    aput-byte v3, v0, v1

    const/16 v1, 0xdea

    aput-byte v3, v0, v1

    const/16 v1, 0xdeb

    aput-byte v3, v0, v1

    const/16 v1, 0xdec

    aput-byte v3, v0, v1

    const/16 v1, 0xded

    aput-byte v3, v0, v1

    const/16 v1, 0xdee

    aput-byte v3, v0, v1

    const/16 v1, 0xdef

    aput-byte v3, v0, v1

    const/16 v1, 0xdf0    # 5.0E-42f

    .line 428
    aput-byte v3, v0, v1

    const/16 v1, 0xdf1

    aput-byte v3, v0, v1

    const/16 v1, 0xdf2

    aput-byte v3, v0, v1

    const/16 v1, 0xdf3

    aput-byte v3, v0, v1

    const/16 v1, 0xdf4

    aput-byte v3, v0, v1

    const/16 v1, 0xdf5

    aput-byte v3, v0, v1

    const/16 v1, 0xdf6

    aput-byte v3, v0, v1

    const/16 v1, 0xdf7

    aput-byte v3, v0, v1

    const/16 v1, 0xdf8

    aput-byte v3, v0, v1

    const/16 v1, 0xdf9

    aput-byte v3, v0, v1

    const/16 v1, 0xdfa

    aput-byte v3, v0, v1

    const/16 v1, 0xdfb

    aput-byte v3, v0, v1

    const/16 v1, 0xdfc

    aput-byte v3, v0, v1

    const/16 v1, 0xdfd

    aput-byte v3, v0, v1

    const/16 v1, 0xdfe

    aput-byte v3, v0, v1

    const/16 v1, 0xdff

    aput-byte v3, v0, v1

    const/16 v1, 0xe00

    .line 429
    aput-byte v3, v0, v1

    const/16 v1, 0xe01

    aput-byte v3, v0, v1

    const/16 v1, 0xe02

    aput-byte v3, v0, v1

    const/16 v1, 0xe03

    aput-byte v3, v0, v1

    const/16 v1, 0xe04

    aput-byte v3, v0, v1

    const/16 v1, 0xe05

    aput-byte v3, v0, v1

    const/16 v1, 0xe06

    aput-byte v3, v0, v1

    const/16 v1, 0xe07

    aput-byte v3, v0, v1

    const/16 v1, 0xe08

    aput-byte v3, v0, v1

    const/16 v1, 0xe09

    aput-byte v3, v0, v1

    const/16 v1, 0xe0a

    aput-byte v3, v0, v1

    const/16 v1, 0xe0b

    aput-byte v3, v0, v1

    const/16 v1, 0xe0c

    aput-byte v3, v0, v1

    const/16 v1, 0xe0d

    aput-byte v3, v0, v1

    const/16 v1, 0xe0e

    aput-byte v3, v0, v1

    const/16 v1, 0xe0f

    aput-byte v3, v0, v1

    const/16 v1, 0xe10

    .line 430
    aput-byte v3, v0, v1

    const/16 v1, 0xe11

    aput-byte v3, v0, v1

    const/16 v1, 0xe12

    aput-byte v3, v0, v1

    const/16 v1, 0xe13

    aput-byte v3, v0, v1

    const/16 v1, 0xe14

    aput-byte v3, v0, v1

    const/16 v1, 0xe15

    aput-byte v3, v0, v1

    .line 204
    sput-object v0, Lorg/tvp/kirikiri2/MediaStoreHack;->temptrack_mp3:[B

    .line 431
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/Context;Ljava/io/File;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    const-string v4, "_data=?"

    .line 56
    .local v4, "where":Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 59
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 60
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 62
    .local v1, "filesUri":Landroid/net/Uri;
    const-string v7, "_data=?"

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v3, "values":Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    const-string v7, "_data=?"

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0
.end method

.method private static getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getInputStream(Landroid/content/Context;Ljava/io/File;J)Ljava/io/InputStream;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "size"    # J

    .prologue
    .line 81
    :try_start_0
    const-string v6, "_data=?"

    .line 82
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7

    .line 85
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v7, "external"

    invoke-static {v7}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, "filesUri":Landroid/net/Uri;
    const-string v7, "_data=?"

    invoke-virtual {v0, v1, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v5, "values":Landroid/content/ContentValues;
    const-string v7, "_data"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v7, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 92
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 94
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "filesUri":Landroid/net/Uri;
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "where":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 93
    :catch_0
    move-exception v3

    .line 94
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static getOutputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-static {p1, p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->getUriFromFile(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "fileUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :cond_0
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getTemporaryAlbumId(Landroid/content/Context;)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->installTemporaryTrack(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 143
    .local v11, "temporaryTrack":Ljava/io/File;
    const-string v2, "external"

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, "filesUri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 147
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 148
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lorg/tvp/kirikiri2/MediaStoreHack;->ALBUM_PROJECTION:[Ljava/lang/String;

    .line 149
    const-string v3, "_data=?"

    const/4 v5, 0x0

    .line 148
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 150
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 151
    :cond_0
    if-eqz v7, :cond_1

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 153
    const/4 v7, 0x0

    .line 155
    :cond_1
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 156
    .local v13, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v2, "title"

    const-string v3, "{MediaWrite Workaround}"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v2, "_size"

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    const-string v2, "mime_type"

    const-string v3, "audio/mpeg"

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v2, "is_music"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 163
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_2
    sget-object v2, Lorg/tvp/kirikiri2/MediaStoreHack;->ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    .line 164
    const/4 v5, 0x0

    .line 163
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 165
    if-nez v7, :cond_3

    .line 166
    const/4 v2, 0x0

    .line 198
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "filesUri":Landroid/net/Uri;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v11    # "temporaryTrack":Ljava/io/File;
    :goto_0
    return v2

    .line 139
    :catch_0
    move-exception v8

    .line 140
    .local v8, "ex":Ljava/io/IOException;
    const-string v2, "MediaFile"

    const-string v3, "Error installing tempory track."

    invoke-static {v2, v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    const/4 v2, 0x0

    goto :goto_0

    .line 168
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v0    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v1    # "filesUri":Landroid/net/Uri;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "temporaryTrack":Ljava/io/File;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    .line 169
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 170
    const/4 v2, 0x0

    goto :goto_0

    .line 172
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 173
    .local v9, "id":I
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 174
    .local v6, "albumId":I
    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 175
    .local v10, "mediaType":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 176
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .restart local v13    # "values":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 178
    .local v12, "updateRequired":Z
    if-nez v6, :cond_5

    .line 179
    const-string v2, "album_id"

    const v3, 0xcc07c9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const/4 v12, 0x1

    .line 182
    :cond_5
    const/4 v2, 0x2

    if-eq v10, v2, :cond_6

    .line 183
    const-string v2, "media_type"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const/4 v12, 0x1

    .line 186
    :cond_6
    if-eqz v12, :cond_7

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 189
    :cond_7
    sget-object v2, Lorg/tvp/kirikiri2/MediaStoreHack;->ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v3, "_data=?"

    .line 190
    const/4 v5, 0x0

    .line 189
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 191
    if-nez v7, :cond_8

    .line 192
    const/4 v2, 0x0

    goto :goto_0

    .line 195
    :cond_8
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_9

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 196
    const/4 v2, 0x0

    goto :goto_0

    .line 198
    :cond_9
    const/4 v2, 0x1

    :try_start_2
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v2

    .line 200
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 201
    throw v2
.end method

.method public static getUriFromFile(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 112
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "_data = ?"

    .line 113
    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v5

    const-string v5, "date_added desc"

    .line 111
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    .local v6, "filecursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 118
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v9, "values":Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v9, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 127
    .end local v9    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v8

    .line 123
    :cond_0
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 124
    .local v7, "imageId":I
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 125
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 126
    .local v8, "uri":Landroid/net/Uri;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static installTemporaryTrack(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-static {p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->getExternalFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 435
    .local v0, "externalFilesDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 436
    const/4 v3, 0x0

    .line 446
    :goto_0
    return-object v3

    .line 438
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "temptrack.mp3"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 439
    .local v3, "temporaryTrack":Ljava/io/File;
    const/4 v1, 0x0

    .line 441
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    sget-object v4, Lorg/tvp/kirikiri2/MediaStoreHack;->temptrack_mp3:[B

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 443
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    .line 444
    :goto_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 445
    throw v4

    .line 443
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static mkdir(Landroid/content/Context;Ljava/io/File;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 450
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 451
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    .line 472
    :goto_0
    return v6

    .line 453
    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v6, ".MediaWriteTemp"

    invoke-direct {v4, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 454
    .local v4, "tmpFile":Ljava/io/File;
    invoke-static {p0}, Lorg/tvp/kirikiri2/MediaStoreHack;->getTemporaryAlbumId(Landroid/content/Context;)I

    move-result v0

    .line 455
    .local v0, "albumId":I
    if-nez v0, :cond_1

    .line 456
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Failed to create temporary album id."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 458
    :cond_1
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "content://media/external/audio/albumart/%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 459
    .local v1, "albumUri":Landroid/net/Uri;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "_data"

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 462
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, v1, v5, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 463
    const-string v6, "album_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v6, "content://media/external/audio/albumart"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 467
    :cond_2
    :try_start_0
    const-string v6, "r"

    invoke-virtual {v2, v1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 468
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-static {p0, v4}, Lorg/tvp/kirikiri2/MediaStoreHack;->delete(Landroid/content/Context;Ljava/io/File;)Z

    .line 472
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    goto :goto_0

    .line 469
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v6

    .line 470
    invoke-static {p0, v4}, Lorg/tvp/kirikiri2/MediaStoreHack;->delete(Landroid/content/Context;Ljava/io/File;)Z

    .line 471
    throw v6
.end method

.method public static mkfile(Landroid/content/Context;Ljava/io/File;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 476
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/tvp/kirikiri2/MediaStoreHack;->getOutputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 477
    .local v0, "outputStream":Ljava/io/OutputStream;
    if-nez v0, :cond_0

    .line 485
    :goto_0
    return v1

    .line 481
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    const/4 v1, 0x1

    goto :goto_0

    .line 483
    :catch_0
    move-exception v2

    goto :goto_0
.end method
