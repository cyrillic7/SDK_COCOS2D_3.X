.class public Lcom/qbao/core/util/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qbao/core/util/Base64$a;,
        Lcom/qbao/core/util/Base64$b;
    }
.end annotation


# static fields
.field public static final URL_SAFE:I = 0x10

.field public static final aU:I = 0x0

.field public static final aV:I = 0x1

.field public static final aW:I = 0x0

.field public static final aX:I = 0x2

.field public static final aY:I = 0x8

.field public static final aZ:I = 0x20

.field private static final ba:I = 0x4c

.field private static final bb:B = 0x3dt

.field private static final bc:B = 0xat

.field private static final bd:Ljava/lang/String; = "UTF-8"

.field private static final be:B = -0x5t

.field private static final bf:B = -0x1t

.field private static final bg:[B

.field private static final bh:[B

.field private static final bi:[B

.field private static final bj:[B

.field private static final bk:[B

.field private static final bl:[B


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
    sput-object v0, Lcom/qbao/core/util/Base64;->bg:[B

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
    sput-object v0, Lcom/qbao/core/util/Base64;->bh:[B

    .line 205
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_77e

    .line 204
    sput-object v0, Lcom/qbao/core/util/Base64;->bi:[B

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
    sput-object v0, Lcom/qbao/core/util/Base64;->bj:[B

    .line 269
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_7a2

    .line 268
    sput-object v0, Lcom/qbao/core/util/Base64;->bk:[B

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
    sput-object v0, Lcom/qbao/core/util/Base64;->bl:[B

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

.method private static a([BI[BII)I
    .registers 9

    .prologue
    const/16 v2, 0x3d

    .line 808
    invoke-static {p4}, Lcom/qbao/core/util/Base64;->i(I)[B

    move-result-object v0

    .line 811
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_26

    .line 816
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    .line 817
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0xc

    .line 816
    or-int/2addr v0, v1

    .line 819
    ushr-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 820
    const/4 v0, 0x1

    .line 864
    :goto_25
    return v0

    .line 824
    :cond_26
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    if-ne v1, v2, :cond_58

    .line 830
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    .line 831
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    .line 830
    or-int/2addr v1, v2

    .line 832
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x6

    .line 830
    or-int/2addr v0, v1

    .line 834
    ushr-int/lit8 v1, v0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 835
    add-int/lit8 v1, p3, 0x1

    ushr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 836
    const/4 v0, 0x2

    goto :goto_25

    .line 848
    :cond_58
    :try_start_58
    aget-byte v1, p0, p1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x12

    .line 849
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0xc

    .line 848
    or-int/2addr v1, v2

    .line 850
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x6

    .line 848
    or-int/2addr v1, v2

    .line 851
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    .line 848
    or-int/2addr v1, v2

    .line 854
    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, p3

    .line 855
    add-int/lit8 v2, p3, 0x1

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 856
    add-int/lit8 v2, p3, 0x2

    int-to-byte v1, v1

    aput-byte v1, p2, v2
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_90} :catch_92

    .line 858
    const/4 v0, 0x3

    goto :goto_25

    .line 859
    :catch_92
    move-exception v1

    .line 860
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 861
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 862
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    aget-byte v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 863
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    aget-byte v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 864
    const/4 v0, -0x1

    goto/16 :goto_25
.end method

.method public static a(Ljava/io/Serializable;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 517
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qbao/core/util/Base64;->a(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/Serializable;I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 548
    .line 554
    and-int/lit8 v1, p1, 0x2

    .line 560
    :try_start_3
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_3e
    .catchall {:try_start_3 .. :try_end_8} :catchall_55

    .line 561
    :try_start_8
    new-instance v4, Lcom/qbao/core/util/Base64$b;

    or-int/lit8 v2, p1, 0x1

    invoke-direct {v4, v5, v2}, Lcom/qbao/core/util/Base64$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_9a
    .catchall {:try_start_8 .. :try_end_f} :catchall_89

    .line 564
    const/4 v2, 0x2

    if-ne v1, v2, :cond_37

    .line 566
    :try_start_12
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_9f
    .catchall {:try_start_12 .. :try_end_17} :catchall_8f

    .line 567
    :try_start_17
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_a3
    .catchall {:try_start_17 .. :try_end_1c} :catchall_94

    .line 572
    :goto_1c
    :try_start_1c
    invoke-virtual {v3, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_a6
    .catchall {:try_start_1c .. :try_end_1f} :catchall_98

    .line 581
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_81

    .line 582
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_83

    .line 583
    :goto_25
    :try_start_25
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_85

    .line 584
    :goto_28
    :try_start_28
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_87

    .line 590
    :goto_2b
    :try_start_2b
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_36} :catch_68

    .line 594
    :goto_36
    return-object v0

    .line 570
    :cond_37
    :try_start_37
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_9f
    .catchall {:try_start_37 .. :try_end_3c} :catchall_8f

    move-object v2, v0

    goto :goto_1c

    .line 574
    :catch_3e
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    .line 576
    :goto_43
    :try_start_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_98

    .line 581
    :try_start_46
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_73

    .line 582
    :goto_49
    :try_start_49
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_75

    .line 583
    :goto_4c
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_77

    .line 584
    :goto_4f
    :try_start_4f
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_36

    :catch_53
    move-exception v1

    goto :goto_36

    .line 580
    :catchall_55
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v0, v1

    .line 581
    :goto_5b
    :try_start_5b
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_79

    .line 582
    :goto_5e
    :try_start_5e
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_7b

    .line 583
    :goto_61
    :try_start_61
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_7d

    .line 584
    :goto_64
    :try_start_64
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_7f

    .line 585
    :goto_67
    throw v0

    .line 592
    :catch_68
    move-exception v0

    .line 594
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_36

    .line 581
    :catch_73
    move-exception v1

    goto :goto_49

    .line 582
    :catch_75
    move-exception v1

    goto :goto_4c

    .line 583
    :catch_77
    move-exception v1

    goto :goto_4f

    .line 581
    :catch_79
    move-exception v1

    goto :goto_5e

    .line 582
    :catch_7b
    move-exception v1

    goto :goto_61

    .line 583
    :catch_7d
    move-exception v1

    goto :goto_64

    .line 584
    :catch_7f
    move-exception v1

    goto :goto_67

    .line 581
    :catch_81
    move-exception v0

    goto :goto_22

    .line 582
    :catch_83
    move-exception v0

    goto :goto_25

    .line 583
    :catch_85
    move-exception v0

    goto :goto_28

    .line 584
    :catch_87
    move-exception v0

    goto :goto_2b

    .line 580
    :catchall_89
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    goto :goto_5b

    :catchall_8f
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto :goto_5b

    :catchall_94
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_5b

    :catchall_98
    move-exception v0

    goto :goto_5b

    .line 574
    :catch_9a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto :goto_43

    :catch_9f
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_43

    :catch_a3
    move-exception v1

    move-object v3, v0

    goto :goto_43

    :catch_a6
    move-exception v1

    goto :goto_43
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 610
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/qbao/core/util/Base64;->a([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)Ljava/lang/String;
    .registers 4

    .prologue
    .line 637
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/qbao/core/util/Base64;->a([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 4

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/qbao/core/util/Base64;->a([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a([BIII)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 682
    and-int/lit8 v1, p3, 0x8

    .line 683
    and-int/lit8 v2, p3, 0x2

    .line 686
    const/4 v3, 0x2

    if-ne v2, v3, :cond_62

    .line 696
    :try_start_9
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_e} :catch_35
    .catchall {:try_start_9 .. :try_end_e} :catchall_48

    .line 697
    :try_start_e
    new-instance v2, Lcom/qbao/core/util/Base64$b;

    or-int/lit8 v1, p3, 0x1

    invoke-direct {v2, v4, v1}, Lcom/qbao/core/util/Base64$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_e5
    .catchall {:try_start_e .. :try_end_15} :catchall_d7

    .line 698
    :try_start_15
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_ea
    .catchall {:try_start_15 .. :try_end_1a} :catchall_dd

    .line 700
    :try_start_1a
    invoke-virtual {v3, p0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 701
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_20} :catch_ee
    .catchall {:try_start_1a .. :try_end_20} :catchall_e2

    .line 710
    :try_start_20
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_ce

    .line 711
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_d1

    .line 712
    :goto_26
    :try_start_26
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_d4

    .line 718
    :goto_29
    :try_start_29
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_34
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_34} :catch_57

    .line 767
    :goto_34
    return-object v0

    .line 703
    :catch_35
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    .line 705
    :goto_39
    :try_start_39
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_e2

    .line 710
    :try_start_3c
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_c2

    .line 711
    :goto_3f
    :try_start_3f
    invoke-virtual {v2}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_c5

    .line 712
    :goto_42
    :try_start_42
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_34

    :catch_46
    move-exception v1

    goto :goto_34

    .line 709
    :catchall_48
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    .line 710
    :goto_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_c8

    .line 711
    :goto_50
    :try_start_50
    invoke-virtual {v2}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_ca

    .line 712
    :goto_53
    :try_start_53
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_cc

    .line 713
    :goto_56
    throw v0

    .line 720
    :catch_57
    move-exception v0

    .line 722
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_34

    .line 730
    :cond_62
    if-nez v1, :cond_9c

    const/4 v0, 0x1

    move v6, v0

    .line 732
    :goto_66
    mul-int/lit8 v0, p2, 0x4

    div-int/lit8 v1, v0, 0x3

    .line 734
    rem-int/lit8 v0, p2, 0x3

    if-lez v0, :cond_9e

    const/4 v0, 0x4

    .line 733
    :goto_6f
    add-int v2, v1, v0

    .line 735
    if-eqz v6, :cond_a0

    div-int/lit8 v0, v1, 0x4c

    .line 733
    :goto_75
    add-int/2addr v0, v2

    new-array v3, v0, [B

    .line 738
    add-int/lit8 v10, p2, -0x2

    move v8, v7

    move v4, v7

    move v9, v7

    .line 740
    :goto_7d
    if-lt v9, v10, :cond_a2

    .line 753
    if-ge v9, p2, :cond_8c

    .line 755
    add-int v1, v9, p1

    sub-int v2, p2, v9

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/qbao/core/util/Base64;->a([BII[BII)[B

    .line 756
    add-int/lit8 v4, v4, 0x4

    .line 763
    :cond_8c
    :try_start_8c
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UTF-8"

    invoke-direct {v0, v3, v1, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_94
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8c .. :try_end_94} :catch_95

    goto :goto_34

    .line 765
    :catch_95
    move-exception v0

    .line 767
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v7, v4}, Ljava/lang/String;-><init>([BII)V

    goto :goto_34

    :cond_9c
    move v6, v7

    .line 730
    goto :goto_66

    :cond_9e
    move v0, v7

    .line 734
    goto :goto_6f

    :cond_a0
    move v0, v7

    .line 735
    goto :goto_75

    .line 742
    :cond_a2
    add-int v1, v9, p1

    const/4 v2, 0x3

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/qbao/core/util/Base64;->a([BII[BII)[B

    .line 744
    add-int/lit8 v0, v8, 0x4

    .line 745
    if-eqz v6, :cond_bb

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_bb

    .line 747
    add-int/lit8 v0, v4, 0x4

    const/16 v1, 0xa

    aput-byte v1, v3, v0

    .line 748
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    .line 740
    :cond_bb
    add-int/lit8 v1, v9, 0x3

    add-int/lit8 v4, v4, 0x4

    move v8, v0

    move v9, v1

    goto :goto_7d

    .line 710
    :catch_c2
    move-exception v1

    goto/16 :goto_3f

    .line 711
    :catch_c5
    move-exception v1

    goto/16 :goto_42

    .line 710
    :catch_c8
    move-exception v1

    goto :goto_50

    .line 711
    :catch_ca
    move-exception v1

    goto :goto_53

    .line 712
    :catch_cc
    move-exception v1

    goto :goto_56

    .line 710
    :catch_ce
    move-exception v0

    goto/16 :goto_23

    .line 711
    :catch_d1
    move-exception v0

    goto/16 :goto_26

    .line 712
    :catch_d4
    move-exception v0

    goto/16 :goto_29

    .line 709
    :catchall_d7
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_4d

    :catchall_dd
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_4d

    :catchall_e2
    move-exception v0

    goto/16 :goto_4d

    .line 703
    :catch_e5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_39

    :catch_ea
    move-exception v1

    move-object v3, v0

    goto/16 :goto_39

    :catch_ee
    move-exception v1

    goto/16 :goto_39
.end method

.method public static a([BLjava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 1079
    .line 1080
    const/4 v2, 0x0

    .line 1083
    :try_start_2
    new-instance v1, Lcom/qbao/core/util/Base64$b;

    .line 1084
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1083
    invoke-direct {v1, v3, v4}, Lcom/qbao/core/util/Base64$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_14
    .catchall {:try_start_2 .. :try_end_d} :catchall_1d

    .line 1085
    :try_start_d
    invoke-virtual {v1, p0}, Lcom/qbao/core/util/Base64$b;->write([B)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_29
    .catchall {:try_start_d .. :try_end_10} :catchall_26

    .line 1095
    :try_start_10
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_24

    .line 1098
    :goto_13
    return v0

    .line 1088
    :catch_14
    move-exception v0

    move-object v1, v2

    .line 1091
    :goto_16
    const/4 v0, 0x0

    .line 1095
    :try_start_17
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_13

    :catch_1b
    move-exception v1

    goto :goto_13

    .line 1094
    :catchall_1d
    move-exception v0

    .line 1095
    :goto_1e
    :try_start_1e
    invoke-virtual {v2}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22

    .line 1096
    :goto_21
    throw v0

    .line 1095
    :catch_22
    move-exception v1

    goto :goto_21

    :catch_24
    move-exception v1

    goto :goto_13

    .line 1094
    :catchall_26
    move-exception v0

    move-object v2, v1

    goto :goto_1e

    .line 1088
    :catch_29
    move-exception v0

    goto :goto_16
.end method

.method private static a([BII[BII)[B
    .registers 11

    .prologue
    const/16 v4, 0x3d

    const/4 v0, 0x0

    .line 457
    invoke-static {p5}, Lcom/qbao/core/util/Base64;->h(I)[B

    move-result-object v3

    .line 470
    if-lez p2, :cond_2c

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x8

    move v2, v1

    .line 471
    :goto_10
    const/4 v1, 0x1

    if-le p2, v1, :cond_2e

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    ushr-int/lit8 v1, v1, 0x10

    .line 470
    :goto_1b
    or-int/2addr v1, v2

    .line 472
    const/4 v2, 0x2

    if-le p2, v2, :cond_27

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    ushr-int/lit8 v0, v0, 0x18

    .line 470
    :cond_27
    or-int/2addr v0, v1

    .line 474
    packed-switch p2, :pswitch_data_8c

    .line 498
    :goto_2b
    return-object p3

    :cond_2c
    move v2, v0

    .line 470
    goto :goto_10

    :cond_2e
    move v1, v0

    .line 471
    goto :goto_1b

    .line 477
    :pswitch_30
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 478
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 479
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v2, v0, 0x6

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 480
    add-int/lit8 v1, p4, 0x3

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    goto :goto_2b

    .line 484
    :pswitch_53
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 485
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p3, v1

    .line 486
    add-int/lit8 v1, p4, 0x2

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 487
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2b

    .line 491
    :pswitch_72
    ushr-int/lit8 v1, v0, 0x12

    aget-byte v1, v3, v1

    aput-byte v1, p3, p4

    .line 492
    add-int/lit8 v1, p4, 0x1

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, v3, v0

    aput-byte v0, p3, v1

    .line 493
    add-int/lit8 v0, p4, 0x2

    aput-byte v4, p3, v0

    .line 494
    add-int/lit8 v0, p4, 0x3

    aput-byte v4, p3, v0

    goto :goto_2b

    .line 474
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_72
        :pswitch_53
        :pswitch_30
    .end packed-switch
.end method

.method private static a([B[BII)[B
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 425
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/qbao/core/util/Base64;->a([BII[BII)[B

    .line 426
    return-object p0
.end method

.method static synthetic b([BI[BII)I
    .registers 6

    .prologue
    .line 806
    invoke-static {p0, p1, p2, p3, p4}, Lcom/qbao/core/util/Base64;->a([BI[BII)I

    move-result v0

    return v0
.end method

.method static synthetic b([BII[BII)[B
    .registers 7

    .prologue
    .line 453
    invoke-static/range {p0 .. p5}, Lcom/qbao/core/util/Base64;->a([BII[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic b([B[BII)[B
    .registers 5

    .prologue
    .line 423
    invoke-static {p0, p1, p2, p3}, Lcom/qbao/core/util/Base64;->a([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qbao/core/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 962
    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_7} :catch_4d

    move-result-object v0

    .line 971
    :goto_8
    array-length v1, v0

    invoke-static {v0, v4, v1, p1}, Lcom/qbao/core/util/Base64;->decode([BIII)[B

    move-result-object v0

    .line 976
    if-eqz v0, :cond_4c

    array-length v1, v0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_4c

    .line 979
    aget-byte v1, v0, v4

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 980
    const v3, 0x8b1f

    if-ne v3, v1, :cond_4c

    .line 985
    const/16 v1, 0x800

    new-array v5, v1, [B

    .line 990
    :try_start_2a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2f} :catch_8c
    .catchall {:try_start_2a .. :try_end_2f} :catchall_67

    .line 991
    :try_start_2f
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_90
    .catchall {:try_start_2f .. :try_end_34} :catchall_84

    .line 992
    :try_start_34
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_39} :catch_93
    .catchall {:try_start_34 .. :try_end_39} :catchall_87

    .line 994
    :goto_39
    :try_start_39
    invoke-virtual {v3, v5}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_53

    .line 1000
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_42} :catch_58
    .catchall {:try_start_39 .. :try_end_42} :catchall_89

    move-result-object v0

    .line 1009
    :try_start_43
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_7e

    .line 1010
    :goto_46
    :try_start_46
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_80

    .line 1011
    :goto_49
    :try_start_49
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_82

    .line 1017
    :cond_4c
    :goto_4c
    return-object v0

    .line 964
    :catch_4d
    move-exception v0

    .line 966
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_8

    .line 996
    :cond_53
    const/4 v6, 0x0

    :try_start_54
    invoke-virtual {v1, v5, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
    .catchall {:try_start_54 .. :try_end_57} :catchall_89

    goto :goto_39

    .line 1003
    :catch_58
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    .line 1009
    :goto_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_74

    .line 1010
    :goto_5e
    :try_start_5e
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_76

    .line 1011
    :goto_61
    :try_start_61
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_4c

    :catch_65
    move-exception v1

    goto :goto_4c

    .line 1008
    :catchall_67
    move-exception v0

    move-object v1, v2

    move-object v4, v2

    .line 1009
    :goto_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_78

    .line 1010
    :goto_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_7a

    .line 1011
    :goto_70
    :try_start_70
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_7c

    .line 1012
    :goto_73
    throw v0

    .line 1009
    :catch_74
    move-exception v1

    goto :goto_5e

    .line 1010
    :catch_76
    move-exception v1

    goto :goto_61

    .line 1009
    :catch_78
    move-exception v1

    goto :goto_6d

    .line 1010
    :catch_7a
    move-exception v1

    goto :goto_70

    .line 1011
    :catch_7c
    move-exception v1

    goto :goto_73

    .line 1009
    :catch_7e
    move-exception v1

    goto :goto_46

    .line 1010
    :catch_80
    move-exception v1

    goto :goto_49

    .line 1011
    :catch_82
    move-exception v1

    goto :goto_4c

    .line 1008
    :catchall_84
    move-exception v0

    move-object v4, v2

    goto :goto_6a

    :catchall_87
    move-exception v0

    goto :goto_6a

    :catchall_89
    move-exception v0

    move-object v2, v3

    goto :goto_6a

    .line 1003
    :catch_8c
    move-exception v1

    move-object v1, v2

    move-object v3, v2

    goto :goto_5b

    :catch_90
    move-exception v3

    move-object v3, v2

    goto :goto_5b

    :catch_93
    move-exception v3

    move-object v3, v4

    goto :goto_5b
.end method

.method public static decode([BIII)[B
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 885
    invoke-static {p3}, Lcom/qbao/core/util/Base64;->i(I)[B

    move-result-object v5

    .line 887
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 888
    new-array v6, v0, [B

    .line 891
    const/4 v0, 0x4

    new-array v7, v0, [B

    move v4, p1

    move v2, v1

    move v3, v1

    .line 896
    :goto_11
    add-int v0, p1, p2

    if-lt v4, v0, :cond_1d

    move v0, v3

    .line 926
    :cond_16
    new-array v2, v0, [B

    .line 927
    invoke-static {v6, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    .line 928
    :goto_1c
    return-object v0

    .line 898
    :cond_1d
    aget-byte v0, p0, v4

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v8, v0

    .line 899
    aget-byte v0, v5, v8

    .line 901
    const/4 v9, -0x5

    if-lt v0, v9, :cond_42

    .line 903
    const/4 v9, -0x1

    if-lt v0, v9, :cond_6c

    .line 905
    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v7, v2

    .line 906
    const/4 v2, 0x3

    if-le v0, v2, :cond_6a

    .line 908
    invoke-static {v7, v1, v6, v3, p3}, Lcom/qbao/core/util/Base64;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    .line 912
    const/16 v2, 0x3d

    if-eq v8, v2, :cond_16

    move v2, v0

    move v0, v1

    .line 896
    :goto_3c
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_11

    .line 921
    :cond_42
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad Base64 input character at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(decimal)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 922
    const/4 v0, 0x0

    goto :goto_1c

    :cond_6a
    move v2, v3

    goto :goto_3c

    :cond_6c
    move v0, v2

    move v2, v3

    goto :goto_3c
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1113
    .line 1114
    const/4 v2, 0x0

    .line 1117
    :try_start_2
    new-instance v1, Lcom/qbao/core/util/Base64$b;

    .line 1118
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1117
    invoke-direct {v1, v3, v4}, Lcom/qbao/core/util/Base64$b;-><init>(Ljava/io/OutputStream;I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_d} :catch_1b
    .catchall {:try_start_2 .. :try_end_d} :catchall_23

    .line 1119
    :try_start_d
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qbao/core/util/Base64$b;->write([B)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_16} :catch_2f
    .catchall {:try_start_d .. :try_end_16} :catchall_2c

    .line 1120
    const/4 v0, 0x1

    .line 1128
    :try_start_17
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_2a

    .line 1131
    :goto_1a
    return v0

    .line 1122
    :catch_1b
    move-exception v1

    move-object v1, v2

    .line 1128
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_1a

    :catch_21
    move-exception v1

    goto :goto_1a

    .line 1127
    :catchall_23
    move-exception v0

    .line 1128
    :goto_24
    :try_start_24
    invoke-virtual {v2}, Lcom/qbao/core/util/Base64$b;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 1129
    :goto_27
    throw v0

    .line 1128
    :catch_28
    move-exception v1

    goto :goto_27

    :catch_2a
    move-exception v1

    goto :goto_1a

    .line 1127
    :catchall_2c
    move-exception v0

    move-object v2, v1

    goto :goto_24

    .line 1122
    :catch_2f
    move-exception v2

    goto :goto_1d
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1249
    invoke-static {p0}, Lcom/qbao/core/util/Base64;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1250
    const/4 v2, 0x0

    .line 1252
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 1253
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_1c
    .catchall {:try_start_5 .. :try_end_f} :catchall_27

    .line 1254
    :try_start_f
    const-string v2, "US-ASCII"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_18} :catch_33
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 1260
    :try_start_18
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_2f

    .line 1263
    :goto_1b
    return-void

    .line 1256
    :catch_1c
    move-exception v0

    move-object v1, v2

    .line 1257
    :goto_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_31

    .line 1260
    :try_start_21
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_1b

    .line 1261
    :catch_25
    move-exception v0

    goto :goto_1b

    .line 1259
    :catchall_27
    move-exception v0

    move-object v1, v2

    .line 1260
    :goto_29
    :try_start_29
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_2d

    .line 1262
    :goto_2c
    throw v0

    .line 1261
    :catch_2d
    move-exception v1

    goto :goto_2c

    :catch_2f
    move-exception v0

    goto :goto_1b

    .line 1259
    :catchall_31
    move-exception v0

    goto :goto_29

    .line 1256
    :catch_33
    move-exception v0

    goto :goto_1e
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1275
    invoke-static {p0}, Lcom/qbao/core/util/Base64;->k(Ljava/lang/String;)[B

    move-result-object v0

    .line 1276
    const/4 v2, 0x0

    .line 1278
    :try_start_5
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 1279
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1278
    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_f} :catch_16
    .catchall {:try_start_5 .. :try_end_f} :catchall_21

    .line 1280
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_2d
    .catchall {:try_start_f .. :try_end_12} :catchall_2a

    .line 1286
    :try_start_12
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_28

    .line 1289
    :goto_15
    return-void

    .line 1282
    :catch_16
    move-exception v0

    move-object v1, v2

    .line 1283
    :goto_18
    :try_start_18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2a

    .line 1286
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_15

    .line 1287
    :catch_1f
    move-exception v0

    goto :goto_15

    .line 1285
    :catchall_21
    move-exception v0

    .line 1286
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    .line 1288
    :goto_25
    throw v0

    .line 1287
    :catch_26
    move-exception v1

    goto :goto_25

    :catch_28
    move-exception v0

    goto :goto_15

    .line 1285
    :catchall_2a
    move-exception v0

    move-object v2, v1

    goto :goto_22

    .line 1282
    :catch_2d
    move-exception v0

    goto :goto_18
.end method

.method private static final h(I)[B
    .registers 3

    .prologue
    .line 339
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/qbao/core/util/Base64;->bi:[B

    .line 341
    :goto_8
    return-object v0

    .line 340
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/qbao/core/util/Base64;->bk:[B

    goto :goto_8

    .line 341
    :cond_12
    sget-object v0, Lcom/qbao/core/util/Base64;->bg:[B

    goto :goto_8
.end method

.method private static final i(Ljava/lang/String;)V
    .registers 3

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

.method private static final i(I)[B
    .registers 3

    .prologue
    .line 355
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_9

    sget-object v0, Lcom/qbao/core/util/Base64;->bj:[B

    .line 357
    :goto_8
    return-object v0

    .line 356
    :cond_9
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/qbao/core/util/Base64;->bl:[B

    goto :goto_8

    .line 357
    :cond_12
    sget-object v0, Lcom/qbao/core/util/Base64;->bh:[B

    goto :goto_8
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1034
    invoke-static {p0}, Lcom/qbao/core/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 1042
    :try_start_5
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_29
    .catchall {:try_start_5 .. :try_end_a} :catchall_38

    .line 1043
    :try_start_a
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_5a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_f} :catch_55
    .catchall {:try_start_a .. :try_end_f} :catchall_4f

    .line 1045
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_5d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_12} :catch_58
    .catchall {:try_start_f .. :try_end_12} :catchall_53

    move-result-object v0

    .line 1059
    :try_start_13
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_4b

    .line 1060
    :goto_16
    :try_start_16
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_4d

    .line 1063
    :goto_19
    return-object v0

    .line 1047
    :catch_1a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1049
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_53

    .line 1059
    :try_start_20
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_43

    .line 1060
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_27

    goto :goto_19

    :catch_27
    move-exception v1

    goto :goto_19

    .line 1052
    :catch_29
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 1054
    :goto_2c
    :try_start_2c
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_53

    .line 1059
    :try_start_2f
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_45

    .line 1060
    :goto_32
    :try_start_32
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_19

    :catch_36
    move-exception v1

    goto :goto_19

    .line 1058
    :catchall_38
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 1059
    :goto_3c
    :try_start_3c
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_47

    .line 1060
    :goto_3f
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_49

    .line 1061
    :goto_42
    throw v0

    .line 1059
    :catch_43
    move-exception v1

    goto :goto_23

    :catch_45
    move-exception v1

    goto :goto_32

    :catch_47
    move-exception v1

    goto :goto_3f

    .line 1060
    :catch_49
    move-exception v1

    goto :goto_42

    .line 1059
    :catch_4b
    move-exception v1

    goto :goto_16

    .line 1060
    :catch_4d
    move-exception v1

    goto :goto_19

    .line 1058
    :catchall_4f
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3c

    :catchall_53
    move-exception v0

    goto :goto_3c

    .line 1052
    :catch_55
    move-exception v1

    move-object v2, v0

    goto :goto_2c

    :catch_58
    move-exception v1

    goto :goto_2c

    .line 1047
    :catch_5a
    move-exception v1

    move-object v2, v0

    goto :goto_1d

    :catch_5d
    move-exception v1

    goto :goto_1d
.end method

.method static synthetic j(I)[B
    .registers 2

    .prologue
    .line 337
    invoke-static {p0}, Lcom/qbao/core/util/Base64;->h(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(I)[B
    .registers 2

    .prologue
    .line 353
    invoke-static {p0}, Lcom/qbao/core/util/Base64;->i(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static k(Ljava/lang/String;)[B
    .registers 10

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1148
    .line 1149
    const/4 v1, 0x0

    .line 1153
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v4, v4, v6

    if-lez v4, :cond_35

    .line 1161
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "File is too big for this convenience method ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_31} :catch_63
    .catchall {:try_start_3 .. :try_end_31} :catchall_7f

    .line 1186
    :try_start_31
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_87

    .line 1189
    :goto_34
    return-object v0

    .line 1164
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v1, v4

    new-array v4, v1, [B

    .line 1167
    new-instance v1, Lcom/qbao/core/util/Base64$a;

    .line 1168
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 1169
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1168
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1169
    const/4 v3, 0x0

    .line 1167
    invoke-direct {v1, v5, v3}, Lcom/qbao/core/util/Base64$a;-><init>(Ljava/io/InputStream;I)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_4c} :catch_63
    .catchall {:try_start_35 .. :try_end_4c} :catchall_7f

    .line 1172
    :goto_4c
    const/16 v3, 0x1000

    :try_start_4e
    invoke-virtual {v1, v4, v2, v3}, Lcom/qbao/core/util/Base64$a;->read([BII)I

    move-result v3

    if-gez v3, :cond_61

    .line 1176
    new-array v0, v2, [B

    .line 1177
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5b} :catch_8d
    .catchall {:try_start_4e .. :try_end_5b} :catchall_8b

    .line 1186
    :try_start_5b
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_34

    :catch_5f
    move-exception v1

    goto :goto_34

    .line 1173
    :cond_61
    add-int/2addr v2, v3

    goto :goto_4c

    .line 1180
    :catch_63
    move-exception v1

    move-object v1, v0

    .line 1182
    :goto_65
    :try_start_65
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error decoding from file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_8b

    .line 1186
    :try_start_79
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_34

    :catch_7d
    move-exception v1

    goto :goto_34

    .line 1185
    :catchall_7f
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1186
    :goto_83
    :try_start_83
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_89

    .line 1187
    :goto_86
    throw v0

    .line 1186
    :catch_87
    move-exception v1

    goto :goto_34

    :catch_89
    move-exception v1

    goto :goto_86

    .line 1185
    :catchall_8b
    move-exception v0

    goto :goto_83

    .line 1180
    :catch_8d
    move-exception v2

    goto :goto_65
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1205
    .line 1210
    :try_start_2
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1211
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3ff6666666666666L

    mul-double/2addr v4, v6

    double-to-int v2, v4

    const/16 v4, 0x28

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v4, v2, [B

    .line 1216
    new-instance v2, Lcom/qbao/core/util/Base64$a;

    .line 1217
    new-instance v5, Ljava/io/BufferedInputStream;

    .line 1218
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1217
    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1218
    const/4 v3, 0x1

    .line 1216
    invoke-direct {v2, v5, v3}, Lcom/qbao/core/util/Base64$a;-><init>(Ljava/io/InputStream;I)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2b} :catch_43
    .catchall {:try_start_2 .. :try_end_2b} :catchall_61

    move v3, v0

    .line 1221
    :goto_2c
    const/16 v0, 0x1000

    :try_start_2e
    invoke-virtual {v2, v4, v3, v0}, Lcom/qbao/core/util/Base64$a;->read([BII)I

    move-result v0

    if-gez v0, :cond_40

    .line 1225
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v0, v4, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_72
    .catchall {:try_start_2e .. :try_end_3c} :catchall_6a

    .line 1234
    :try_start_3c
    invoke-virtual {v2}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_68

    .line 1237
    :goto_3f
    return-object v0

    .line 1222
    :cond_40
    add-int/2addr v0, v3

    move v3, v0

    goto :goto_2c

    .line 1228
    :catch_43
    move-exception v0

    move-object v0, v1

    .line 1230
    :goto_45
    :try_start_45
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error encoding from file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_45 .. :try_end_59} :catchall_6d

    .line 1234
    :try_start_59
    invoke-virtual {v0}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5e

    move-object v0, v1

    goto :goto_3f

    :catch_5e
    move-exception v0

    move-object v0, v1

    goto :goto_3f

    .line 1233
    :catchall_61
    move-exception v0

    .line 1234
    :goto_62
    :try_start_62
    invoke-virtual {v1}, Lcom/qbao/core/util/Base64$a;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    .line 1235
    :goto_65
    throw v0

    .line 1234
    :catch_66
    move-exception v1

    goto :goto_65

    :catch_68
    move-exception v1

    goto :goto_3f

    .line 1233
    :catchall_6a
    move-exception v0

    move-object v1, v2

    goto :goto_62

    :catchall_6d
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_62

    .line 1228
    :catch_72
    move-exception v0

    move-object v0, v2

    goto :goto_45
.end method

.method public static final main([Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 374
    array-length v0, p0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_a

    .line 375
    const-string v0, "Not enough arguments."

    invoke-static {v0}, Lcom/qbao/core/util/Base64;->i(Ljava/lang/String;)V

    .line 391
    :goto_9
    return-void

    .line 378
    :cond_a
    const/4 v0, 0x0

    aget-object v0, p0, v0

    .line 379
    const/4 v1, 0x1

    aget-object v1, p0, v1

    .line 380
    const/4 v2, 0x2

    aget-object v2, p0, v2

    .line 381
    const-string v3, "-e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 382
    invoke-static {v1, v2}, Lcom/qbao/core/util/Base64;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 384
    :cond_1f
    const-string v3, "-d"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 385
    invoke-static {v1, v2}, Lcom/qbao/core/util/Base64;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 388
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown flag: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qbao/core/util/Base64;->i(Ljava/lang/String;)V

    goto :goto_9
.end method
