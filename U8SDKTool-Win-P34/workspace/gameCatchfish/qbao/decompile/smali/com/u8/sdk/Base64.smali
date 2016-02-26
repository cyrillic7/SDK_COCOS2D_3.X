.class public Lcom/u8/sdk/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/Base64$InputStream;,
        Lcom/u8/sdk/Base64$OutputStream;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field private static final EQUALS_SIGN:B = 0x3dt

.field private static final EQUALS_SIGN_ENC:B = -0x1t

.field public static final GZIP:I = 0x2

.field private static final MAX_LINE_LENGTH:I = 0x4c

.field private static final NEW_LINE:B = 0xat

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field private static final PREFERRED_ENCODING:Ljava/lang/String; = "UTF-8"

.field public static final URL_SAFE:I = 0x10

.field private static final WHITE_SPACE_ENC:B = -0x5t

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x5

    const/16 v3, -0x9

    .line 143
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_75a

    .line 142
    sput-object v0, Lcom/u8/sdk/Base64;->_STANDARD_ALPHABET:[B

    .line 162
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 163
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 164
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 165
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 166
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 167
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 168
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 169
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 170
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 171
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    .line 172
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 173
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x30

    .line 174
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 175
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 176
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 177
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 178
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 179
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 180
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 181
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 182
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 183
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 161
    sput-object v0, Lcom/u8/sdk/Base64;->_STANDARD_DECODABET:[B

    .line 205
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_77e

    .line 204
    sput-object v0, Lcom/u8/sdk/Base64;->_URL_SAFE_ALPHABET:[B

    .line 222
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 223
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 224
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 225
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 226
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 227
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 228
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 229
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 230
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 231
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 232
    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    .line 233
    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    .line 234
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 235
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 236
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 237
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 238
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 239
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x42

    .line 240
    aput-byte v5, v0, v1

    const/16 v1, 0x43

    aput-byte v6, v0, v1

    const/16 v1, 0x44

    aput-byte v7, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    .line 241
    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 242
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 243
    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 244
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 245
    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 246
    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 247
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 221
    sput-object v0, Lcom/u8/sdk/Base64;->_URL_SAFE_DECODABET:[B

    .line 269
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_7a2

    .line 268
    sput-object v0, Lcom/u8/sdk/Base64;->_ORDERED_ALPHABET:[B

    .line 288
    const/16 v0, 0x7f

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 289
    aput-byte v3, v0, v1

    aput-byte v3, v0, v5

    aput-byte v3, v0, v6

    aput-byte v3, v0, v7

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    .line 290
    aput-byte v4, v0, v1

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xb

    .line 291
    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    .line 292
    aput-byte v4, v0, v1

    const/16 v1, 0xe

    .line 293
    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    .line 294
    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 295
    aput-byte v4, v0, v1

    const/16 v1, 0x21

    .line 296
    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    .line 297
    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    .line 298
    aput-byte v3, v0, v1

    const/16 v1, 0x2e

    .line 300
    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    .line 301
    aput-byte v3, v0, v1

    const/16 v1, 0x30

    .line 302
    aput-byte v5, v0, v1

    const/16 v1, 0x31

    aput-byte v6, v0, v1

    const/16 v1, 0x32

    aput-byte v7, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    .line 303
    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    .line 304
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    .line 305
    aput-byte v3, v0, v1

    const/16 v1, 0x3f

    aput-byte v3, v0, v1

    const/16 v1, 0x40

    aput-byte v3, v0, v1

    const/16 v1, 0x41

    .line 306
    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    .line 307
    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    .line 308
    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    .line 309
    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x60

    .line 310
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    .line 311
    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x63

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x64

    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    .line 312
    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    .line 313
    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    .line 287
    sput-object v0, Lcom/u8/sdk/Base64;->_ORDERED_DECODABET:[B

    .line 324
    return-void

    .line 143
    :array_75a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 205
    :array_77e
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    .line 269
    :array_7a2
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)[B
    .registers 2

    .prologue
    .line 337
    invoke-static {p0}, Lcom/u8/sdk/Base64;->getAlphabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(I)[B
    .registers 2

    .prologue
    .line 353
    invoke-static {p0}, Lcom/u8/sdk/Base64;->getDecodabet(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2([BII[BII)[B
    .registers 7

    .prologue
    .line 453
    invoke-static/range {p0 .. p5}, Lcom/u8/sdk/Base64;->encode3to4([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3([BI[BII)I
    .registers 6

    .prologue
    .line 806
    invoke-static {p0, p1, p2, p3, p4}, Lcom/u8/sdk/Base64;->decode4to3([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic access$4([B[BII)[B
    .registers 5

    .prologue
    .line 423
    invoke-static {p0, p1, p2, p3}, Lcom/u8/sdk/Base64;->encode3to4([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/u8/sdk/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 16
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # I

    .prologue
    const/4 v13, 0x0

    .line 962
    :try_start_1
    const-string v11, "UTF-8"

    invoke-virtual {p0, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_51

    move-result-object v5

    .line 971
    .local v5, "bytes":[B
    :goto_7
    array-length v11, v5

    invoke-static {v5, v13, v11, p1}, Lcom/u8/sdk/Base64;->decode([BIII)[B

    move-result-object v5

    .line 976
    if-eqz v5, :cond_50

    array-length v11, v5

    const/4 v12, 0x4

    if-lt v11, v12, :cond_50

    .line 979
    aget-byte v11, v5, v13

    and-int/lit16 v11, v11, 0xff

    const/4 v12, 0x1

    aget-byte v12, v5, v12

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    or-int v8, v11, v12

    .line 980
    .local v8, "head":I
    const v11, 0x8b1f

    if-ne v11, v8, :cond_50

    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 984
    .local v6, "gzis":Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 985
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x800

    new-array v4, v11, [B

    .line 986
    .local v4, "buffer":[B
    const/4 v9, 0x0

    .line 990
    .local v9, "length":I
    :try_start_2e
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_93
    .catchall {:try_start_2e .. :try_end_33} :catchall_6c

    .line 991
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_33
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_95
    .catchall {:try_start_33 .. :try_end_38} :catchall_87

    .line 992
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_38
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3d} :catch_98
    .catchall {:try_start_38 .. :try_end_3d} :catchall_8a

    .line 994
    .end local v6    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v7, "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_3d
    :try_start_3d
    invoke-virtual {v7, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v9

    if-gez v9, :cond_57

    .line 1000
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_46} :catch_5c
    .catchall {:try_start_3d .. :try_end_46} :catchall_8e

    move-result-object v5

    .line 1009
    :try_start_47
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_81

    .line 1010
    :goto_4a
    :try_start_4a
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_83

    .line 1011
    :goto_4d
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_85

    .line 1017
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "buffer":[B
    .end local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v8    # "head":I
    .end local v9    # "length":I
    :cond_50
    :goto_50
    return-object v5

    .line 964
    .end local v5    # "bytes":[B
    :catch_51
    move-exception v10

    .line 966
    .local v10, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .restart local v5    # "bytes":[B
    goto :goto_7

    .line 996
    .end local v10    # "uee":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v8    # "head":I
    .restart local v9    # "length":I
    :cond_57
    const/4 v11, 0x0

    :try_start_58
    invoke-virtual {v3, v4, v11, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c
    .catchall {:try_start_58 .. :try_end_5b} :catchall_8e

    goto :goto_3d

    .line 1003
    :catch_5c
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 1009
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_60
    :try_start_60
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_77

    .line 1010
    :goto_63
    :try_start_63
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_79

    .line 1011
    :goto_66
    :try_start_66
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_50

    :catch_6a
    move-exception v11

    goto :goto_50

    .line 1008
    :catchall_6c
    move-exception v11

    .line 1009
    :goto_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_7b

    .line 1010
    :goto_70
    :try_start_70
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_7d

    .line 1011
    :goto_73
    :try_start_73
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_76} :catch_7f

    .line 1012
    :goto_76
    throw v11

    .line 1009
    :catch_77
    move-exception v11

    goto :goto_63

    .line 1010
    :catch_79
    move-exception v11

    goto :goto_66

    .line 1009
    :catch_7b
    move-exception v12

    goto :goto_70

    .line 1010
    :catch_7d
    move-exception v12

    goto :goto_73

    .line 1011
    :catch_7f
    move-exception v12

    goto :goto_76

    .line 1009
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catch_81
    move-exception v11

    goto :goto_4a

    .line 1010
    :catch_83
    move-exception v11

    goto :goto_4d

    .line 1011
    :catch_85
    move-exception v11

    goto :goto_50

    .line 1008
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catchall_87
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_6d

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_8a
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6d

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catchall_8e
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gzis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_6d

    .line 1003
    :catch_93
    move-exception v11

    goto :goto_60

    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_95
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_60

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_98
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_60
.end method

.method public static decode([BIII)[B
    .registers 19
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I

    .prologue
    .line 885
    invoke-static/range {p3 .. p3}, Lcom/u8/sdk/Base64;->getDecodabet(I)[B

    move-result-object v1

    .line 887
    .local v1, "DECODABET":[B
    mul-int/lit8 v12, p2, 0x3

    div-int/lit8 v6, v12, 0x4

    .line 888
    .local v6, "len34":I
    new-array v8, v6, [B

    .line 889
    .local v8, "outBuff":[B
    const/4 v9, 0x0

    .line 891
    .local v9, "outBuffPosn":I
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 892
    .local v2, "b4":[B
    const/4 v3, 0x0

    .line 893
    .local v3, "b4Posn":I
    const/4 v5, 0x0

    .line 894
    .local v5, "i":I
    const/4 v10, 0x0

    .line 895
    .local v10, "sbiCrop":B
    const/4 v11, 0x0

    .line 896
    .local v11, "sbiDecode":B
    move/from16 v5, p1

    move v4, v3

    .end local v3    # "b4Posn":I
    .local v4, "b4Posn":I
    :goto_15
    add-int v12, p1, p2

    if-lt v5, v12, :cond_22

    move v3, v4

    .line 926
    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    :cond_1a
    new-array v7, v9, [B

    .line 927
    .local v7, "out":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    .end local v7    # "out":[B
    :goto_21
    return-object v7

    .line 898
    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    :cond_22
    aget-byte v12, p0, v5

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v10, v12

    .line 899
    aget-byte v11, v1, v10

    .line 901
    const/4 v12, -0x5

    if-lt v11, v12, :cond_47

    .line 903
    const/4 v12, -0x1

    if-lt v11, v12, :cond_70

    .line 905
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    aput-byte v10, v2, v4

    .line 906
    const/4 v12, 0x3

    if-le v3, v12, :cond_43

    .line 908
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v2, v12, v8, v9, v0}, Lcom/u8/sdk/Base64;->decode4to3([BI[BII)I

    move-result v12

    add-int/2addr v9, v12

    .line 909
    const/4 v3, 0x0

    .line 912
    const/16 v12, 0x3d

    if-eq v10, v12, :cond_1a

    .line 896
    :cond_43
    :goto_43
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    goto :goto_15

    .line 921
    :cond_47
    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Bad Base64 input character at "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-byte v14, p0, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "(decimal)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 922
    const/4 v7, 0x0

    move v3, v4

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    goto :goto_21

    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    :cond_70
    move v3, v4

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    goto :goto_43
.end method

.method private static decode4to3([BI[BII)I
    .registers 11
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .prologue
    const/16 v4, 0x3d

    .line 808
    invoke-static {p4}, Lcom/u8/sdk/Base64;->getDecodabet(I)[B

    move-result-object v0

    .line 811
    .local v0, "DECODABET":[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_27

    .line 816
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 817
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 816
    or-int v2, v3, v4

    .line 819
    .local v2, "outBuff":I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 820
    const/4 v3, 0x1

    .line 864
    .end local v2    # "outBuff":I
    :goto_26
    return v3

    .line 824
    :cond_27
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_5a

    .line 830
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 831
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 830
    or-int/2addr v3, v4

    .line 832
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    .line 830
    or-int v2, v3, v4

    .line 834
    .restart local v2    # "outBuff":I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 835
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 836
    const/4 v3, 0x2

    goto :goto_26

    .line 848
    .end local v2    # "outBuff":I
    :cond_5a
    :try_start_5a
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    .line 849
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    .line 848
    or-int/2addr v3, v4

    .line 850
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    .line 848
    or-int/2addr v3, v4

    .line 851
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 848
    or-int v2, v3, v4

    .line 854
    .restart local v2    # "outBuff":I
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 855
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 856
    add-int/lit8 v3, p3, 0x2

    int-to-byte v4, v2

    aput-byte v4, p2, v3
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_93} :catch_95

    .line 858
    const/4 v3, 0x3

    goto :goto_26

    .line 859
    .end local v2    # "outBuff":I
    :catch_95
    move-exception v1

    .line 860
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v5, p0, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, p0, p1

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 861
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 862
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x2

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 863
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, p0, v5

    aget-byte v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    const/4 v3, -0x1

    goto/16 :goto_26
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;

    .prologue
    .line 1275
    invoke-static {p0}, Lcom/u8/sdk/Base64;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 1276
    .local v0, "decoded":[B
    const/4 v2, 0x0

    .line 1278
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1279
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1278
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_17
    .catchall {:try_start_5 .. :try_end_f} :catchall_21

    .line 1280
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_f
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_2e
    .catchall {:try_start_f .. :try_end_12} :catchall_2b

    .line 1286
    :try_start_12
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_26

    move-object v2, v3

    .line 1289
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_16
    return-void

    .line 1282
    :catch_17
    move-exception v1

    .line 1283
    .local v1, "ex":Ljava/io/IOException;
    :goto_18
    :try_start_18
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_21

    .line 1286
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_16

    .line 1287
    :catch_1f
    move-exception v4

    goto :goto_16

    .line 1285
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_21
    move-exception v4

    .line 1286
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_29

    .line 1288
    :goto_25
    throw v4

    .line 1287
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_26
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_16

    :catch_29
    move-exception v5

    goto :goto_25

    .line 1285
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_2b
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_22

    .line 1282
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2e
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_18
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .registers 13
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1148
    const/4 v3, 0x0

    .line 1149
    .local v3, "decodedData":[B
    const/4 v0, 0x0

    .line 1153
    .local v0, "bis":Lcom/u8/sdk/Base64$InputStream;
    :try_start_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v5, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 1155
    .local v2, "buffer":[B
    const/4 v6, 0x0

    .line 1156
    .local v6, "length":I
    const/4 v7, 0x0

    .line 1159
    .local v7, "numBytes":I
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_38

    .line 1161
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "File is too big for this convenience method ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes)."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_33} :catch_66
    .catchall {:try_start_2 .. :try_end_33} :catchall_81

    .line 1186
    :try_start_33
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_89

    .line 1162
    :goto_36
    const/4 v8, 0x0

    .line 1189
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    :goto_37
    return-object v8

    .line 1164
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :cond_38
    :try_start_38
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 1167
    new-instance v1, Lcom/u8/sdk/Base64$InputStream;

    .line 1168
    new-instance v8, Ljava/io/BufferedInputStream;

    .line 1169
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1168
    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1169
    const/4 v9, 0x0

    .line 1167
    invoke-direct {v1, v8, v9}, Lcom/u8/sdk/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_4f} :catch_66
    .catchall {:try_start_38 .. :try_end_4f} :catchall_81

    .line 1172
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .local v1, "bis":Lcom/u8/sdk/Base64$InputStream;
    :goto_4f
    const/16 v8, 0x1000

    :try_start_51
    invoke-virtual {v1, v2, v6, v8}, Lcom/u8/sdk/Base64$InputStream;->read([BII)I

    move-result v7

    if-gez v7, :cond_64

    .line 1176
    new-array v3, v6, [B

    .line 1177
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5e} :catch_90
    .catchall {:try_start_51 .. :try_end_5e} :catchall_8d

    .line 1186
    :try_start_5e
    invoke-virtual {v1}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_86

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    :goto_62
    move-object v8, v3

    .line 1189
    goto :goto_37

    .line 1173
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :cond_64
    add-int/2addr v6, v7

    goto :goto_4f

    .line 1180
    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    :catch_66
    move-exception v4

    .line 1182
    .local v4, "e":Ljava/io/IOException;
    :goto_67
    :try_start_67
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Error decoding from file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_67 .. :try_end_7b} :catchall_81

    .line 1186
    :try_start_7b
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_62

    :catch_7f
    move-exception v8

    goto :goto_62

    .line 1185
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_81
    move-exception v8

    .line 1186
    :goto_82
    :try_start_82
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_8b

    .line 1187
    :goto_85
    throw v8

    .line 1186
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catch_86
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    goto :goto_62

    :catch_89
    move-exception v8

    goto :goto_36

    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    :catch_8b
    move-exception v9

    goto :goto_85

    .line 1185
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catchall_8d
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    goto :goto_82

    .line 1180
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    :catch_90
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    goto :goto_67
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "dataToDecode"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1113
    const/4 v3, 0x0

    .line 1114
    .local v3, "success":Z
    const/4 v0, 0x0

    .line 1117
    .local v0, "bos":Lcom/u8/sdk/Base64$OutputStream;
    :try_start_2
    new-instance v1, Lcom/u8/sdk/Base64$OutputStream;

    .line 1118
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 1117
    invoke-direct {v1, v4, v5}, Lcom/u8/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_1c
    .catchall {:try_start_2 .. :try_end_d} :catchall_24

    .line 1119
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .local v1, "bos":Lcom/u8/sdk/Base64$OutputStream;
    :try_start_d
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/u8/sdk/Base64$OutputStream;->write([B)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_31
    .catchall {:try_start_d .. :try_end_16} :catchall_2e

    .line 1120
    const/4 v3, 0x1

    .line 1128
    :try_start_17
    invoke-virtual {v1}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_29

    move-object v0, v1

    .line 1131
    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :goto_1b
    return v3

    .line 1122
    :catch_1c
    move-exception v2

    .line 1124
    .local v2, "e":Ljava/io/IOException;
    :goto_1d
    const/4 v3, 0x0

    .line 1128
    :try_start_1e
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_1b

    :catch_22
    move-exception v4

    goto :goto_1b

    .line 1127
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_24
    move-exception v4

    .line 1128
    :goto_25
    :try_start_25
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2c

    .line 1129
    :goto_28
    throw v4

    .line 1128
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :catch_29
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    goto :goto_1b

    :catch_2c
    move-exception v5

    goto :goto_28

    .line 1127
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :catchall_2e
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    goto :goto_25

    .line 1122
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :catch_31
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    goto :goto_1d
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .param p0, "encodedObject"    # Ljava/lang/String;

    .prologue
    .line 1034
    invoke-static {p0}, Lcom/u8/sdk/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    .line 1036
    .local v4, "objBytes":[B
    const/4 v0, 0x0

    .line 1037
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 1038
    .local v5, "ois":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 1042
    .local v3, "obj":Ljava/lang/Object;
    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_c} :catch_2c
    .catchall {:try_start_7 .. :try_end_c} :catchall_3a

    .line 1043
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_c
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_11} :catch_57
    .catchall {:try_start_c .. :try_end_11} :catchall_50

    .line 1045
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .local v6, "ois":Ljava/io/ObjectInputStream;
    :try_start_11
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_61
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_14} :catch_5a
    .catchall {:try_start_11 .. :try_end_14} :catchall_53

    move-result-object v3

    .line 1059
    :try_start_15
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_4e

    .line 1060
    :goto_18
    :try_start_18
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_42

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .line 1063
    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    :goto_1d
    return-object v3

    .line 1047
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_1e
    move-exception v2

    .line 1049
    .local v2, "e":Ljava/io/IOException;
    :goto_1f
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_3a

    .line 1050
    const/4 v3, 0x0

    .line 1059
    :try_start_23
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_46

    .line 1060
    :goto_26
    :try_start_26
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_1d

    :catch_2a
    move-exception v7

    goto :goto_1d

    .line 1052
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2c
    move-exception v2

    .line 1054
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3a

    .line 1055
    const/4 v3, 0x0

    .line 1059
    :try_start_31
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_48

    .line 1060
    :goto_34
    :try_start_34
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_1d

    :catch_38
    move-exception v7

    goto :goto_1d

    .line 1058
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_3a
    move-exception v7

    .line 1059
    :goto_3b
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_4a

    .line 1060
    :goto_3e
    :try_start_3e
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_4c

    .line 1061
    :goto_41
    throw v7

    .line 1060
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catch_42
    move-exception v7

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1d

    .line 1059
    .local v2, "e":Ljava/io/IOException;
    :catch_46
    move-exception v7

    goto :goto_26

    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :catch_48
    move-exception v7

    goto :goto_34

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_4a
    move-exception v8

    goto :goto_3e

    .line 1060
    :catch_4c
    move-exception v8

    goto :goto_41

    .line 1059
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catch_4e
    move-exception v7

    goto :goto_18

    .line 1058
    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_50
    move-exception v7

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3b

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catchall_53
    move-exception v7

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_3b

    .line 1052
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_57
    move-exception v2

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2d

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catch_5a
    move-exception v2

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_2d

    .line 1047
    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    :catch_5e
    move-exception v2

    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1f

    .end local v0    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "ois":Ljava/io/ObjectInputStream;
    :catch_61
    move-exception v2

    move-object v5, v6

    .end local v6    # "ois":Ljava/io/ObjectInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bais":Ljava/io/ByteArrayInputStream;
    goto :goto_1f
.end method

.method private static encode3to4([BII[BII)[B
    .registers 12
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 457
    invoke-static {p5}, Lcom/u8/sdk/Base64;->getAlphabet(I)[B

    move-result-object v0

    .line 470
    .local v0, "ALPHABET":[B
    if-lez p2, :cond_2d

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    .line 471
    :goto_10
    const/4 v3, 0x1

    if-le p2, v3, :cond_2f

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    .line 470
    :goto_1b
    or-int/2addr v3, v4

    .line 472
    const/4 v4, 0x2

    if-le p2, v4, :cond_27

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    .line 470
    :cond_27
    or-int v1, v3, v2

    .line 474
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_8c

    .line 498
    :goto_2c
    return-object p3

    .end local v1    # "inBuff":I
    :cond_2d
    move v4, v2

    .line 470
    goto :goto_10

    :cond_2f
    move v3, v2

    .line 471
    goto :goto_1b

    .line 477
    .restart local v1    # "inBuff":I
    :pswitch_31
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 478
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 479
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 480
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2c

    .line 484
    :pswitch_54
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 485
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 486
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 487
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2c

    .line 491
    :pswitch_73
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 492
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 493
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 494
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2c

    .line 474
    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_73
        :pswitch_54
        :pswitch_31
    .end packed-switch
.end method

.method private static encode3to4([B[BII)[B
    .registers 10
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v1, 0x0

    .line 425
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/u8/sdk/Base64;->encode3to4([BII[BII)[B

    .line 426
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # [B

    .prologue
    const/4 v1, 0x0

    .line 610
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/u8/sdk/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # [B
    .param p1, "options"    # I

    .prologue
    .line 637
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/u8/sdk/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .registers 4
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/u8/sdk/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .registers 28
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I

    .prologue
    .line 682
    and-int/lit8 v16, p3, 0x8

    .line 683
    .local v16, "dontBreakLines":I
    and-int/lit8 v17, p3, 0x2

    .line 686
    .local v17, "gzip":I
    const/4 v4, 0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_68

    .line 688
    const/4 v12, 0x0

    .line 689
    .local v12, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v18, 0x0

    .line 690
    .local v18, "gzos":Ljava/util/zip/GZIPOutputStream;
    const/4 v10, 0x0

    .line 696
    .local v10, "b64os":Lcom/u8/sdk/Base64$OutputStream;
    :try_start_d
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_43
    .catchall {:try_start_d .. :try_end_12} :catchall_52

    .line 697
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v13, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_12
    new-instance v11, Lcom/u8/sdk/Base64$OutputStream;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v11, v13, v4}, Lcom/u8/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_19} :catch_fd
    .catchall {:try_start_12 .. :try_end_19} :catchall_ed

    .line 698
    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .local v11, "b64os":Lcom/u8/sdk/Base64$OutputStream;
    :try_start_19
    new-instance v19, Ljava/util/zip/GZIPOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_20} :catch_101
    .catchall {:try_start_19 .. :try_end_20} :catchall_f1

    .line 700
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v19, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_20
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 701
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2e} :catch_106
    .catchall {:try_start_20 .. :try_end_2e} :catchall_f6

    .line 710
    :try_start_2e
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_e4

    .line 711
    :goto_31
    :try_start_31
    invoke-virtual {v11}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_e7

    .line 712
    :goto_34
    :try_start_34
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_ea

    .line 718
    :goto_37
    :try_start_37
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_42
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_37 .. :try_end_42} :catch_5d

    .line 767
    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :goto_42
    return-object v4

    .line 703
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_43
    move-exception v8

    .line 705
    .local v8, "e":Ljava/io/IOException;
    :goto_44
    :try_start_44
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_52

    .line 710
    :try_start_47
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_d2

    .line 711
    :goto_4a
    :try_start_4a
    invoke-virtual {v10}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_d5

    .line 712
    :goto_4d
    :try_start_4d
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_d8

    .line 706
    :goto_50
    const/4 v4, 0x0

    goto :goto_42

    .line 709
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v4

    .line 710
    :goto_53
    :try_start_53
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_db

    .line 711
    :goto_56
    :try_start_56
    invoke-virtual {v10}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_de

    .line 712
    :goto_59
    :try_start_59
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_e1

    .line 713
    :goto_5c
    throw v4

    .line 720
    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_5d
    move-exception v23

    .line 722
    .local v23, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_42

    .line 730
    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .end local v23    # "uue":Ljava/io/UnsupportedEncodingException;
    :cond_68
    if-nez v16, :cond_a9

    const/4 v14, 0x1

    .line 732
    .local v14, "breakLines":Z
    :goto_6b
    mul-int/lit8 v4, p2, 0x4

    div-int/lit8 v21, v4, 0x3

    .line 734
    .local v21, "len43":I
    rem-int/lit8 v4, p2, 0x3

    if-lez v4, :cond_ab

    const/4 v4, 0x4

    .line 733
    :goto_74
    add-int v5, v21, v4

    .line 735
    if-eqz v14, :cond_ad

    div-int/lit8 v4, v21, 0x4c

    .line 733
    :goto_7a
    add-int/2addr v4, v5

    new-array v7, v4, [B

    .line 736
    .local v7, "outBuff":[B
    const/4 v15, 0x0

    .line 737
    .local v15, "d":I
    const/4 v8, 0x0

    .line 738
    .local v8, "e":I
    add-int/lit8 v20, p2, -0x2

    .line 739
    .local v20, "len2":I
    const/16 v22, 0x0

    .line 740
    .local v22, "lineLength":I
    :goto_83
    move/from16 v0, v20

    if-lt v15, v0, :cond_af

    .line 753
    move/from16 v0, p2

    if-ge v15, v0, :cond_98

    .line 755
    add-int v5, v15, p1

    sub-int v6, p2, v15

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/u8/sdk/Base64;->encode3to4([BII[BII)[B

    .line 756
    add-int/lit8 v8, v8, 0x4

    .line 763
    :cond_98
    :try_start_98
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v4, v7, v5, v8, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_a0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_98 .. :try_end_a0} :catch_a1

    goto :goto_42

    .line 765
    :catch_a1
    move-exception v23

    .line 767
    .restart local v23    # "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v7, v5, v8}, Ljava/lang/String;-><init>([BII)V

    goto :goto_42

    .line 730
    .end local v7    # "outBuff":[B
    .end local v8    # "e":I
    .end local v14    # "breakLines":Z
    .end local v15    # "d":I
    .end local v20    # "len2":I
    .end local v21    # "len43":I
    .end local v22    # "lineLength":I
    .end local v23    # "uue":Ljava/io/UnsupportedEncodingException;
    :cond_a9
    const/4 v14, 0x0

    goto :goto_6b

    .line 734
    .restart local v14    # "breakLines":Z
    .restart local v21    # "len43":I
    :cond_ab
    const/4 v4, 0x0

    goto :goto_74

    .line 735
    :cond_ad
    const/4 v4, 0x0

    goto :goto_7a

    .line 742
    .restart local v7    # "outBuff":[B
    .restart local v8    # "e":I
    .restart local v15    # "d":I
    .restart local v20    # "len2":I
    .restart local v22    # "lineLength":I
    :cond_af
    add-int v5, v15, p1

    const/4 v6, 0x3

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Lcom/u8/sdk/Base64;->encode3to4([BII[BII)[B

    .line 744
    add-int/lit8 v22, v22, 0x4

    .line 745
    if-eqz v14, :cond_cd

    const/16 v4, 0x4c

    move/from16 v0, v22

    if-ne v0, v4, :cond_cd

    .line 747
    add-int/lit8 v4, v8, 0x4

    const/16 v5, 0xa

    aput-byte v5, v7, v4

    .line 748
    add-int/lit8 v8, v8, 0x1

    .line 749
    const/16 v22, 0x0

    .line 740
    :cond_cd
    add-int/lit8 v15, v15, 0x3

    add-int/lit8 v8, v8, 0x4

    goto :goto_83

    .line 710
    .end local v7    # "outBuff":[B
    .end local v14    # "breakLines":Z
    .end local v15    # "d":I
    .end local v20    # "len2":I
    .end local v21    # "len43":I
    .end local v22    # "lineLength":I
    .local v8, "e":Ljava/io/IOException;
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_d2
    move-exception v4

    goto/16 :goto_4a

    .line 711
    :catch_d5
    move-exception v4

    goto/16 :goto_4d

    .line 712
    :catch_d8
    move-exception v4

    goto/16 :goto_50

    .line 710
    .end local v8    # "e":Ljava/io/IOException;
    :catch_db
    move-exception v5

    goto/16 :goto_56

    .line 711
    :catch_de
    move-exception v5

    goto/16 :goto_59

    .line 712
    :catch_e1
    move-exception v5

    goto/16 :goto_5c

    .line 710
    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_e4
    move-exception v4

    goto/16 :goto_31

    .line 711
    :catch_e7
    move-exception v4

    goto/16 :goto_34

    .line 712
    :catch_ea
    move-exception v4

    goto/16 :goto_37

    .line 709
    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_ed
    move-exception v4

    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_53

    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_f1
    move-exception v4

    move-object v10, v11

    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_53

    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_f6
    move-exception v4

    move-object v10, v11

    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_53

    .line 703
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_fd
    move-exception v8

    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_44

    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_101
    move-exception v8

    move-object v10, v11

    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_44

    .end local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .end local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_106
    move-exception v8

    move-object v10, v11

    .end local v11    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v10    # "b64os":Lcom/u8/sdk/Base64$OutputStream;
    move-object/from16 v18, v19

    .end local v19    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v18    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v12, v13

    .end local v13    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_44
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;

    .prologue
    .line 1249
    invoke-static {p0}, Lcom/u8/sdk/Base64;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    .local v0, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1252
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_5
    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1253
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1d
    .catchall {:try_start_5 .. :try_end_f} :catchall_27

    .line 1254
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_f
    const-string v4, "US-ASCII"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_34
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 1260
    :try_start_18
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2c

    move-object v2, v3

    .line 1263
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_1c
    return-void

    .line 1256
    :catch_1d
    move-exception v1

    .line 1257
    .local v1, "ex":Ljava/io/IOException;
    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_27

    .line 1260
    :try_start_21
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1c

    .line 1261
    :catch_25
    move-exception v4

    goto :goto_1c

    .line 1259
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_27
    move-exception v4

    .line 1260
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2f

    .line 1262
    :goto_2b
    throw v4

    .line 1261
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_2c
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1c

    :catch_2f
    move-exception v5

    goto :goto_2b

    .line 1259
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_31
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_28

    .line 1256
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_34
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1e
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1205
    const/4 v4, 0x0

    .line 1206
    .local v4, "encodedData":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1210
    .local v0, "bis":Lcom/u8/sdk/Base64$InputStream;
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3ff6666666666666L

    mul-double/2addr v10, v12

    double-to-int v9, v10

    const/16 v10, 0x28

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v2, v9, [B

    .line 1212
    .local v2, "buffer":[B
    const/4 v7, 0x0

    .line 1213
    .local v7, "length":I
    const/4 v8, 0x0

    .line 1216
    .local v8, "numBytes":I
    new-instance v1, Lcom/u8/sdk/Base64$InputStream;

    .line 1217
    new-instance v9, Ljava/io/BufferedInputStream;

    .line 1218
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1217
    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1218
    const/4 v10, 0x1

    .line 1216
    invoke-direct {v1, v9, v10}, Lcom/u8/sdk/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2d} :catch_45
    .catchall {:try_start_2 .. :try_end_2d} :catchall_60

    .line 1221
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .local v1, "bis":Lcom/u8/sdk/Base64$InputStream;
    :goto_2d
    const/16 v9, 0x1000

    :try_start_2f
    invoke-virtual {v1, v2, v7, v9}, Lcom/u8/sdk/Base64$InputStream;->read([BII)I

    move-result v8

    if-gez v8, :cond_43

    .line 1225
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v5, v2, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3d} :catch_6e
    .catchall {:try_start_2f .. :try_end_3d} :catchall_6b

    .line 1234
    .end local v4    # "encodedData":Ljava/lang/String;
    .local v5, "encodedData":Ljava/lang/String;
    :try_start_3d
    invoke-virtual {v1}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_65

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    move-object v4, v5

    .line 1237
    .end local v2    # "buffer":[B
    .end local v5    # "encodedData":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "length":I
    .end local v8    # "numBytes":I
    .restart local v4    # "encodedData":Ljava/lang/String;
    :goto_42
    return-object v4

    .line 1222
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "length":I
    .restart local v8    # "numBytes":I
    :cond_43
    add-int/2addr v7, v8

    goto :goto_2d

    .line 1228
    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .end local v2    # "buffer":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "length":I
    .end local v8    # "numBytes":I
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    :catch_45
    move-exception v3

    .line 1230
    .local v3, "e":Ljava/io/IOException;
    :goto_46
    :try_start_46
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error encoding from file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_60

    .line 1234
    :try_start_5a
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_42

    :catch_5e
    move-exception v9

    goto :goto_42

    .line 1233
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v9

    .line 1234
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$InputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_69

    .line 1235
    :goto_64
    throw v9

    .line 1234
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .end local v4    # "encodedData":Ljava/lang/String;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v5    # "encodedData":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "length":I
    .restart local v8    # "numBytes":I
    :catch_65
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    move-object v4, v5

    .end local v5    # "encodedData":Ljava/lang/String;
    .restart local v4    # "encodedData":Ljava/lang/String;
    goto :goto_42

    .end local v2    # "buffer":[B
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "length":I
    .end local v8    # "numBytes":I
    :catch_69
    move-exception v10

    goto :goto_64

    .line 1233
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v2    # "buffer":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "length":I
    .restart local v8    # "numBytes":I
    :catchall_6b
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    goto :goto_61

    .line 1228
    .end local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    :catch_6e
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Lcom/u8/sdk/Base64$InputStream;
    .restart local v0    # "bis":Lcom/u8/sdk/Base64$InputStream;
    goto :goto_46
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2
    .param p0, "serializableObject"    # Ljava/io/Serializable;

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/u8/sdk/Base64;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 16
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .param p1, "options"    # I

    .prologue
    .line 548
    const/4 v2, 0x0

    .line 549
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 550
    .local v0, "b64os":Ljava/io/OutputStream;
    const/4 v8, 0x0

    .line 551
    .local v8, "oos":Ljava/io/ObjectOutputStream;
    const/4 v6, 0x0

    .line 554
    .local v6, "gzos":Ljava/util/zip/GZIPOutputStream;
    and-int/lit8 v5, p1, 0x2

    .line 560
    .local v5, "gzip":I
    :try_start_6
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_45
    .catchall {:try_start_6 .. :try_end_b} :catchall_57

    .line 561
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v3, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_b
    new-instance v1, Lcom/u8/sdk/Base64$OutputStream;

    or-int/lit8 v11, p1, 0x1

    invoke-direct {v1, v3, v11}, Lcom/u8/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_12} :catch_96
    .catchall {:try_start_b .. :try_end_12} :catchall_8a

    .line 564
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .local v1, "b64os":Ljava/io/OutputStream;
    const/4 v11, 0x2

    if-ne v5, v11, :cond_3e

    .line 566
    :try_start_15
    new-instance v7, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_99
    .catchall {:try_start_15 .. :try_end_1a} :catchall_8d

    .line 567
    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v7, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1a
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v7}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_9d
    .catchall {:try_start_1a .. :try_end_1f} :catchall_91

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .local v9, "oos":Ljava/io/ObjectOutputStream;
    move-object v6, v7

    .end local v7    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v8, v9

    .line 572
    .end local v9    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "oos":Ljava/io/ObjectOutputStream;
    :goto_21
    :try_start_21
    invoke-virtual {v8, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_99
    .catchall {:try_start_21 .. :try_end_24} :catchall_8d

    .line 581
    :try_start_24
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_82

    .line 582
    :goto_27
    :try_start_27
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_84

    .line 583
    :goto_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_86

    .line 584
    :goto_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_88

    .line 590
    :goto_30
    :try_start_30
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_30 .. :try_end_3b} :catch_65

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .line 594
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_3d
    return-object v11

    .line 570
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_3e
    :try_start_3e
    new-instance v9, Ljava/io/ObjectOutputStream;

    invoke-direct {v9, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_99
    .catchall {:try_start_3e .. :try_end_43} :catchall_8d

    .end local v8    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v9    # "oos":Ljava/io/ObjectOutputStream;
    move-object v8, v9

    .end local v9    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_21

    .line 574
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_45
    move-exception v4

    .line 576
    .local v4, "e":Ljava/io/IOException;
    :goto_46
    :try_start_46
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_57

    .line 581
    :try_start_49
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_72

    .line 582
    :goto_4c
    :try_start_4c
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_74

    .line 583
    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_76

    .line 584
    :goto_52
    :try_start_52
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_55} :catch_78

    .line 577
    :goto_55
    const/4 v11, 0x0

    goto :goto_3d

    .line 580
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_57
    move-exception v11

    .line 581
    :goto_58
    :try_start_58
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_7a

    .line 582
    :goto_5b
    :try_start_5b
    invoke-virtual {v6}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_7c

    .line 583
    :goto_5e
    :try_start_5e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_7e

    .line 584
    :goto_61
    :try_start_61
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_80

    .line 585
    :goto_64
    throw v11

    .line 592
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_65
    move-exception v10

    .line 594
    .local v10, "uue":Ljava/io/UnsupportedEncodingException;
    new-instance v11, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_3d

    .line 581
    .end local v10    # "uue":Ljava/io/UnsupportedEncodingException;
    .restart local v4    # "e":Ljava/io/IOException;
    :catch_72
    move-exception v11

    goto :goto_4c

    .line 582
    :catch_74
    move-exception v11

    goto :goto_4f

    .line 583
    :catch_76
    move-exception v11

    goto :goto_52

    .line 584
    :catch_78
    move-exception v11

    goto :goto_55

    .line 581
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7a
    move-exception v12

    goto :goto_5b

    .line 582
    :catch_7c
    move-exception v12

    goto :goto_5e

    .line 583
    :catch_7e
    move-exception v12

    goto :goto_61

    .line 584
    :catch_80
    move-exception v12

    goto :goto_64

    .line 581
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_82
    move-exception v11

    goto :goto_27

    .line 582
    :catch_84
    move-exception v11

    goto :goto_2a

    .line 583
    :catch_86
    move-exception v11

    goto :goto_2d

    .line 584
    :catch_88
    move-exception v11

    goto :goto_30

    .line 580
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    :catchall_8a
    move-exception v11

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_58

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_8d
    move-exception v11

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_58

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_91
    move-exception v11

    move-object v6, v7

    .end local v7    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_58

    .line 574
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_96
    move-exception v4

    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_46

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_99
    move-exception v4

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_46

    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_9d
    move-exception v4

    move-object v6, v7

    .end local v7    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v6    # "gzos":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_46
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .registers 8
    .param p0, "dataToEncode"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1079
    const/4 v3, 0x0

    .line 1080
    .local v3, "success":Z
    const/4 v0, 0x0

    .line 1083
    .local v0, "bos":Lcom/u8/sdk/Base64$OutputStream;
    :try_start_2
    new-instance v1, Lcom/u8/sdk/Base64$OutputStream;

    .line 1084
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 1083
    invoke-direct {v1, v4, v5}, Lcom/u8/sdk/Base64$OutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_16
    .catchall {:try_start_2 .. :try_end_d} :catchall_1e

    .line 1085
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .local v1, "bos":Lcom/u8/sdk/Base64$OutputStream;
    :try_start_d
    invoke-virtual {v1, p0}, Lcom/u8/sdk/Base64$OutputStream;->write([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_2b
    .catchall {:try_start_d .. :try_end_10} :catchall_28

    .line 1086
    const/4 v3, 0x1

    .line 1095
    :try_start_11
    invoke-virtual {v1}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_23

    move-object v0, v1

    .line 1098
    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :goto_15
    return v3

    .line 1088
    :catch_16
    move-exception v2

    .line 1091
    .local v2, "e":Ljava/io/IOException;
    :goto_17
    const/4 v3, 0x0

    .line 1095
    :try_start_18
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_15

    :catch_1c
    move-exception v4

    goto :goto_15

    .line 1094
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1e
    move-exception v4

    .line 1095
    :goto_1f
    :try_start_1f
    invoke-virtual {v0}, Lcom/u8/sdk/Base64$OutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_26

    .line 1096
    :goto_22
    throw v4

    .line 1095
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :catch_23
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    goto :goto_15

    :catch_26
    move-exception v5

    goto :goto_22

    .line 1094
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :catchall_28
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    goto :goto_1f

    .line 1088
    .end local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    :catch_2b
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    .restart local v0    # "bos":Lcom/u8/sdk/Base64$OutputStream;
    goto :goto_17
.end method

.method private static final getAlphabet(I)[B
    .registers 3
    .param p0, "options"    # I

    .prologue
    .line 339
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/u8/sdk/Base64;->_URL_SAFE_ALPHABET:[B

    .line 341
    :goto_8
    return-object v0

    .line 340
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/u8/sdk/Base64;->_ORDERED_ALPHABET:[B

    goto :goto_8

    .line 341
    :cond_12
    sget-object v0, Lcom/u8/sdk/Base64;->_STANDARD_ALPHABET:[B

    goto :goto_8
.end method

.method private static final getDecodabet(I)[B
    .registers 3
    .param p0, "options"    # I

    .prologue
    .line 355
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/u8/sdk/Base64;->_URL_SAFE_DECODABET:[B

    .line 357
    :goto_8
    return-object v0

    .line 356
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/u8/sdk/Base64;->_ORDERED_DECODABET:[B

    goto :goto_8

    .line 357
    :cond_12
    sget-object v0, Lcom/u8/sdk/Base64;->_STANDARD_DECODABET:[B

    goto :goto_8
.end method

.method public static final main([Ljava/lang/String;)V
    .registers 6
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 374
    array-length v3, p0

    const/4 v4, 0x3

    if-ge v3, v4, :cond_a

    .line 375
    const-string v3, "Not enough arguments."

    invoke-static {v3}, Lcom/u8/sdk/Base64;->usage(Ljava/lang/String;)V

    .line 391
    :goto_9
    return-void

    .line 378
    :cond_a
    const/4 v3, 0x0

    aget-object v0, p0, v3

    .line 379
    .local v0, "flag":Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v1, p0, v3

    .line 380
    .local v1, "infile":Ljava/lang/String;
    const/4 v3, 0x2

    aget-object v2, p0, v3

    .line 381
    .local v2, "outfile":Ljava/lang/String;
    const-string v3, "-e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 382
    invoke-static {v1, v2}, Lcom/u8/sdk/Base64;->encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 384
    :cond_1f
    const-string v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 385
    invoke-static {v1, v2}, Lcom/u8/sdk/Base64;->decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 388
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown flag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/u8/sdk/Base64;->usage(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private static final usage(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 400
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java Base64 -e|-d inputfile outputfile"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method
