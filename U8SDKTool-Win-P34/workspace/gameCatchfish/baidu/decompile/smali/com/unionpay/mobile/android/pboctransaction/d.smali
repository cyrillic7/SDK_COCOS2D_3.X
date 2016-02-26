.class public final Lcom/unionpay/mobile/android/pboctransaction/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field private static l:Ljava/sql/Date;

.field private static m:Ljava/lang/String;

.field private static o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Lcom/unionpay/mobile/android/pboctransaction/d;


# instance fields
.field c:Lcom/unionpay/mobile/android/pboctransaction/c;

.field d:Lcom/unionpay/mobile/android/fully/a;

.field public e:Z

.field private f:Ljava/lang/String;

.field private g:B

.field private h:B

.field private i:B

.field private j:Z

.field private k:Z

.field private n:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v0, "A0000003330101010000000000010000"

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->a:Ljava/lang/String;

    const-string v0, "A0000003330101020001050001000000"

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->r:Lcom/unionpay/mobile/android/pboctransaction/d;

    return-void
.end method

.method public constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/c;Lcom/unionpay/mobile/android/fully/a;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.4"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->j:Z

    iput-boolean v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->p:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->d:Lcom/unionpay/mobile/android/fully/a;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v9, 0x3

    const/16 v8, -0x80

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, v1

    :goto_f
    array-length v2, v5

    if-ge v0, v2, :cond_ff

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_10b

    move v2, v3

    :goto_1c
    new-array v6, v2, [B

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7f

    add-int/2addr v2, v0

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-eq v0, v8, :cond_42

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0xff

    :goto_37
    new-array v3, v0, [B

    add-int/2addr v2, v4

    invoke-static {v5, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v3, v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_42
    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v4, v0, 0x1

    if-ne v4, v3, :cond_51

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_37

    :cond_51
    if-ne v4, v9, :cond_63

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_37

    :cond_63
    const/4 v0, 0x4

    if-ne v4, v0, :cond_108

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    goto :goto_37

    :cond_7f
    aget-byte v6, v5, v0

    and-int/lit8 v6, v6, 0x20

    const/16 v7, 0x20

    if-ne v6, v7, :cond_9b

    add-int/2addr v2, v0

    array-length v0, v5

    if-ge v2, v0, :cond_106

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-ne v0, v8, :cond_106

    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x1

    :goto_98
    add-int/2addr v0, v2

    goto/16 :goto_f

    :cond_9b
    add-int v6, v0, v2

    array-length v0, v5

    if-ge v6, v0, :cond_b0

    aget-byte v0, v5, v6

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    if-nez v0, :cond_b0

    aget-byte v0, v5, v6

    and-int/lit16 v0, v0, 0xff

    move v2, v4

    :goto_ac
    add-int/2addr v0, v2

    add-int/2addr v0, v6

    goto/16 :goto_f

    :cond_b0
    array-length v0, v5

    if-ge v6, v0, :cond_104

    aget-byte v0, v5, v6

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v2, v0, 0x1

    :goto_b9
    if-ne v2, v3, :cond_c7

    add-int/lit8 v0, v6, 0x1

    array-length v7, v5

    if-ge v0, v7, :cond_c7

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_ac

    :cond_c7
    if-ne v2, v9, :cond_de

    add-int/lit8 v0, v6, 0x2

    array-length v7, v5

    if-ge v0, v7, :cond_de

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    goto :goto_ac

    :cond_de
    const/4 v0, 0x4

    if-ne v2, v0, :cond_102

    add-int/lit8 v0, v6, 0x2

    array-length v7, v5

    if-ge v0, v7, :cond_102

    add-int/lit8 v0, v6, 0x1

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v0, v7

    add-int/lit8 v7, v6, 0x3

    aget-byte v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v0, v7

    goto :goto_ac

    :cond_ff
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_102
    move v0, v1

    goto :goto_ac

    :cond_104
    move v2, v1

    goto :goto_b9

    :cond_106
    move v0, v4

    goto :goto_98

    :cond_108
    move v0, v1

    goto/16 :goto_37

    :cond_10b
    move v2, v4

    goto/16 :goto_1c
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v4, v1

    move v0, v2

    :goto_10
    if-ge v0, v4, :cond_29

    const-string v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v1, v0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_29
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    if-nez p1, :cond_53

    rem-int/lit8 v0, v1, 0x8

    if-eqz v0, :cond_74

    rem-int/lit8 v0, v1, 0x8

    rsub-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    :goto_41
    new-array v4, v0, [B

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    :goto_52
    return-object v0

    :cond_53
    add-int/lit8 v0, v1, 0x1

    rem-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_5e

    rem-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    :cond_5e
    new-array v4, v0, [B

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, -0x80

    aput-byte v2, v4, v1

    invoke-static {v4, v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_74
    move v0, v1

    goto :goto_41
.end method

.method private a([B)Ljava/lang/String;
    .registers 10

    const/16 v7, -0x70

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v0, p1, v1

    iget-byte v3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    or-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    iget-byte v3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    invoke-interface {v0, p1, v3}, Lcom/unionpay/mobile/android/pboctransaction/c;->a([BI)[B

    move-result-object v3

    if-eqz v3, :cond_78

    array-length v0, v3

    :goto_18
    if-lt v0, v6, :cond_45

    add-int/lit8 v4, v0, -0x2

    aget-byte v4, v3, v4

    const/16 v5, 0x61

    if-ne v4, v5, :cond_45

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    const/4 v3, 0x5

    new-array v3, v3, [B

    iget-byte v4, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    aput-byte v4, v3, v1

    const/4 v4, 0x1

    const/16 v5, -0x40

    aput-byte v5, v3, v4

    aput-byte v1, v3, v6

    const/4 v4, 0x3

    aput-byte v1, v3, v4

    const/4 v4, 0x4

    aput-byte v0, v3, v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    iget-byte v4, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    invoke-interface {v0, v3, v4}, Lcom/unionpay/mobile/android/pboctransaction/c;->a([BI)[B

    move-result-object v3

    if-eqz v3, :cond_7a

    array-length v0, v3

    :cond_45
    :goto_45
    if-lt v0, v6, :cond_91

    add-int/lit8 v4, v0, -0x2

    aget-byte v4, v3, v4

    const/16 v5, 0x6c

    if-ne v4, v5, :cond_91

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, v3, v0

    aput-byte v0, p1, v4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    iget-byte v3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    invoke-interface {v0, p1, v3}, Lcom/unionpay/mobile/android/pboctransaction/c;->a([BI)[B

    move-result-object v0

    if-eqz v0, :cond_63

    array-length v1, v0

    :cond_63
    :goto_63
    if-le v1, v6, :cond_7c

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v0, v3

    if-ne v3, v7, :cond_7c

    add-int/lit8 v3, v1, -0x1

    aget-byte v3, v0, v3

    if-nez v3, :cond_7c

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    :goto_77
    return-object v0

    :cond_78
    move v0, v1

    goto :goto_18

    :cond_7a
    move v0, v1

    goto :goto_45

    :cond_7c
    if-ne v1, v6, :cond_8f

    add-int/lit8 v3, v1, -0x2

    aget-byte v3, v0, v3

    if-ne v3, v7, :cond_8f

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, v0, v1

    if-nez v1, :cond_8f

    invoke-static {v0, v6}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_77

    :cond_8f
    move-object v0, v2

    goto :goto_77

    :cond_91
    move v1, v0

    move-object v0, v3

    goto :goto_63
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    array-length v0, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v1

    array-length v2, p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .registers 6

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    array-length v2, v1

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    array-length v0, v1

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00a40400"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_3b
    return-object v0
.end method

.method private b([B)V
    .registers 7

    const/4 v4, 0x0

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-static {v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v2, -0x80

    aput-byte v2, v1, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    array-length v2, v1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    array-length v0, p1

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p1

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/4 v7, 0x4

    const/4 v0, 0x0

    const-string v1, "80"

    const-string v3, "8C"

    const-string v2, "8D"

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "82"

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "5A"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5F34"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F1F"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "57"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "5F24"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "9F10"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4c
    :try_start_4c
    array-length v1, v4

    if-ge v0, v1, :cond_b0

    const/4 v1, 0x5

    new-array v6, v1, [B

    fill-array-data v6, :array_d2

    const/4 v1, 0x4

    new-array v7, v1, [B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v4, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x4

    const/4 v0, 0x1

    aget-byte v0, v7, v0

    :goto_62
    const/4 v1, 0x2

    aget-byte v1, v7, v1

    if-gt v0, v1, :cond_ae

    const/4 v1, 0x4

    const/4 v8, 0x0

    aput-byte v8, v6, v1

    const/4 v1, 0x3

    const/4 v8, 0x0

    aget-byte v8, v7, v8

    and-int/lit8 v8, v8, -0x8

    or-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    aput-byte v8, v6, v1

    const/4 v1, 0x2

    aput-byte v0, v6, v1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v1, v0

    invoke-direct {p0, v6}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_ac

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_86
    :goto_86
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_86

    sget-object v11, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v11, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_9d} :catch_9e

    goto :goto_86

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a2
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_f

    :cond_ac
    move v0, v1

    goto :goto_62

    :cond_ae
    move v0, v2

    goto :goto_4c

    :cond_b0
    :try_start_b0
    new-instance v1, Ljava/lang/StringBuffer;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "5F34"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "5F34"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_d0} :catch_9e

    goto :goto_a2

    nop

    :array_d2
    .array-data 1
        0x0t
        -0x4et
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/16 v8, 0x1a

    const/16 v7, 0xa

    const/4 v6, 0x6

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "80AE800034"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2a

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_83

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F27"

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F36"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F26"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F10"

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    return-object v0
.end method

.method private static d()V
    .registers 5

    const/16 v4, 0x8

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F26"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F27"

    const-string v3, "80"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F10"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F37"

    const-string v3, "00000000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F36"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "95"

    const-string v3, "0000000800"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9A"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9C"

    const-string v2, "45"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F02"

    const-string v2, "000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5F2A"

    const-string v2, "0156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "82"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F1A"

    const-string v2, "0156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F03"

    const-string v2, "000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F33"

    const-string v2, "A04000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F34"

    const-string v2, "000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F35"

    const-string v2, "34"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F1E"

    const-string v2, "3030303030303030"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "84"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F09"

    const-string v2, "0001"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F74"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F63"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F7A"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F21"

    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F4E"

    const-string v2, "0000000000000000000000000000000000000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "DF31"

    const-string v2, "0100000000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x5

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    new-array v0, v1, [B

    fill-array-data v0, :array_20

    new-array v1, v1, [B

    fill-array-data v1, :array_28

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->b([B)V

    invoke-direct {p0, v1, v2}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    return-object v0

    :array_20
    .array-data 1
        -0x80t
        0x1at
        0x13t
        0x1t
        0x0t
    .end array-data

    nop

    :array_28
    .array-data 1
        -0x80t
        -0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private e()Z
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "5A"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_2c
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3a

    :cond_38
    move v0, v1

    :goto_39
    return v0

    :cond_3a
    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "AN1"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "00000001"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_51

    :cond_4f
    move v0, v1

    goto :goto_39

    :cond_51
    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "TID"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "9F02"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_70

    :cond_6e
    move v0, v1

    goto :goto_39

    :cond_70
    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "AMT"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "156"

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_87

    :cond_85
    move v0, v1

    goto :goto_39

    :cond_87
    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "CUR"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "57"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_98
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cf

    :cond_c4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_98

    :cond_cf
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_db

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_de

    :cond_db
    move v0, v1

    goto/16 :goto_39

    :cond_de
    sget-object v2, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "TD2"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "5F24"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_125

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "5F24"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_125

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "5F24"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_11e

    :cond_11b
    move v0, v1

    goto/16 :goto_39

    :cond_11e
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "ED"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_125
    const/4 v0, 0x1

    goto/16 :goto_39
.end method

.method private f()Ljava/lang/String;
    .registers 7

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "80A800000b8309"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "9F7A019F02065F2A02"

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_27

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_11

    :cond_45
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x5

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    new-array v1, v2, [B

    fill-array-data v1, :array_62

    new-array v2, v2, [B

    fill-array-data v2, :array_6a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_39
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0x10

    if-ge v0, v5, :cond_49

    const-string v5, "F"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_49
    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b([B)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "PIN"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    iget-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    return-object v0

    :array_62
    .array-data 1
        -0x80t
        0x1at
        0x14t
        0x1t
        0x0t
    .end array-data

    nop

    :array_6a
    .array-data 1
        -0x80t
        -0x6t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private g()Ljava/lang/String;
    .registers 4

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "CSN"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    return-object v0

    :array_22
    .array-data 1
        0x0t
        -0x50t
        -0x7et
        0x0t
        0xat
    .end array-data
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x1c0

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    new-array v1, v2, [B

    fill-array-data v1, :array_62

    new-array v2, v2, [B

    fill-array-data v2, :array_6a

    invoke-static {p1, v4}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b([B)V

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_34

    const/4 v1, 0x3

    aput-byte v1, v2, v5

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    :cond_34
    aput-byte v4, v2, v5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v1, v3, :cond_41

    const-wide/16 v4, 0x3e8

    :try_start_3e
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_41} :catch_5d

    :cond_41
    :goto_41
    invoke-direct {p0, v2, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v2, "MAC"

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_52
    iget-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->h:B

    iput-byte v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :cond_5c
    return-object v0

    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_41

    :array_62
    .array-data 1
        -0x80t
        0x1at
        0x15t
        0x1t
        0x8t
    .end array-data

    nop

    :array_6a
    .array-data 1
        -0x80t
        -0x6t
        0x1t
        0x0t
        0x0t
    .end array-data
.end method

.method private static h()Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_resp_code"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_b

    move-object v0, v4

    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v5

    move v0, v1

    :goto_10
    array-length v2, v5

    if-ge v0, v2, :cond_3e

    aget-byte v2, v5, v0

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    const/16 v6, 0x1f

    if-ne v2, v6, :cond_42

    const/4 v2, 0x2

    :goto_1d
    new-array v6, v2, [B

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    array-length v0, v5

    if-ge v2, v0, :cond_40

    aget-byte v0, v5, v2

    and-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    const/16 v6, -0x80

    if-ne v0, v6, :cond_40

    aget-byte v0, v5, v2

    and-int/lit8 v0, v0, 0x7f

    add-int/lit8 v0, v0, 0x1

    :goto_3c
    add-int/2addr v0, v2

    goto :goto_10

    :cond_3e
    move-object v0, v4

    goto :goto_a

    :cond_40
    move v0, v3

    goto :goto_3c

    :cond_42
    move v2, v3

    goto :goto_1d
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "uppay"

    const-string v1, "startUPCardPurchase() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->b()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_1f
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_1ce

    move-object v0, v1

    :goto_2c
    monitor-exit p0

    return-object v0

    :cond_2e
    :try_start_2e
    const-string v0, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ************T1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "PIN"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "PIN"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->decPrefData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_73

    :cond_65
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2c

    :cond_73
    const-string v0, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ************T2="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a5

    :cond_97
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2c

    :cond_a5
    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c0

    :cond_b1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v2, "10019"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_2c

    :cond_c0
    const/16 v3, 0x28

    const/16 v4, 0x3c

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3c

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x64

    const/16 v6, 0xd0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd8

    const/16 v7, 0xe8

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e3
    .catchall {:try_start_2e .. :try_end_e3} :catchall_1ce

    move-result-object v0

    :try_start_e4
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "v"

    iget-object v8, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "cmd"

    const-string v8, "pay"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "params"

    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "pay_type"

    const-string v9, "2"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "pay_mode"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "bind"

    const-string v9, "no"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "carrier_tp"

    const-string v9, "1"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v8, "track2_data"

    invoke-virtual {v7, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "track3_data"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "csn"

    sget-object v5, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v8, "CSN"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "submit_time"

    sget-object v5, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sp_id"

    const-string v5, "8889"

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pin"

    sget-object v5, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v8, "PIN"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pan"

    invoke-virtual {v7, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "dynamic_key_data"

    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier_app_tp"

    const-string v3, "1"

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_1c9

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1c9

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1c9

    const-string v0, "pan"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pin"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_184
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_197
    .catch Lorg/json/JSONException; {:try_start_e4 .. :try_end_197} :catch_198
    .catchall {:try_start_e4 .. :try_end_197} :catchall_1ce

    goto :goto_184

    :catch_198
    move-exception v0

    :try_start_199
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v2

    :goto_19d
    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " ************T3="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->d:Lcom/unionpay/mobile/android/fully/a;

    invoke-interface {v2, v0}, Lcom/unionpay/mobile/android/fully/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "action_resp_message"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V
    :try_end_1c6
    .catchall {:try_start_199 .. :try_end_1c6} :catchall_1ce

    move-object v0, v1

    goto/16 :goto_2c

    :cond_1c9
    :try_start_1c9
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1cc
    .catch Lorg/json/JSONException; {:try_start_1c9 .. :try_end_1cc} :catch_198
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1ce

    move-result-object v0

    goto :goto_19d

    :catchall_1ce
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->b()V

    const-string v0, "uppay"

    const-string v1, "startPBOCPurchase() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "PIN"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F02"

    const-string v2, "trans_amt"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9F1A"

    const-string v2, "0156"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5F2A"

    const-string v2, "trans currcy code"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "9C"

    const-string v2, "trans_type"

    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->h()Landroid/os/Bundle;

    move-result-object v2

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/sql/Date;-><init>(J)V

    sput-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->l:Ljava/sql/Date;

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->n:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_97

    :cond_7e
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    :goto_85
    const-string v0, "action_resp_code"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    if-eq v0, v1, :cond_fe

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_ab

    move-object v0, v2

    :goto_95
    monitor-exit p0

    return-object v0

    :cond_97
    :try_start_97
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_ae

    :cond_a3
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_97 .. :try_end_aa} :catchall_ab

    goto :goto_85

    :catchall_ab
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_ae
    :try_start_ae
    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ba

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c2

    :cond_ba
    const-string v0, "action_resp_code"

    const-string v1, "10020"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_c2
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d6

    :cond_ce
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_d6
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_ea

    :cond_e2
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_ea
    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_85

    :cond_f6
    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_85

    :cond_fe
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "PIN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p6}, Lcom/unionpay/mobile/android/utils/PreferenceUtils;->decPrefData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_118

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_127

    :cond_118
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_95

    :cond_127
    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->e()Z

    move-result v0

    if-nez v0, :cond_13c

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_95

    :cond_13c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "9F26"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F27"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F10"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F37"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F36"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "95"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9A"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9C"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F02"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "5F2A"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "82"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F1A"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F03"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F33"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F34"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F35"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F1E"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v3, "DCD"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "TID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1dd

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "AMT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1dd

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "CUR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1dd

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "AN1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1dd

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "CSN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1dd

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1ec

    :cond_1dd
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_95

    :cond_1ec
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "TID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20b

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "TID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20b
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "AMT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_220

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "AMT"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_220
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "CUR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_235

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "CUR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_235
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "AN1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24a

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "AN1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24a
    sget-object v1, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v4, "AN1"

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "5A"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "CSN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_274

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "CSN"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_274
    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->p:Z

    if-eqz v0, :cond_28d

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "ED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_28d

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "ED"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28d
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a2

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5F34"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a2
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "DCD"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b7

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "DCD"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b7
    const-string v1, ""

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_430

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2e2
    move-object v1, v0

    goto :goto_2bd

    :cond_2e4
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_303

    :cond_2f4
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_300
    .catchall {:try_start_ae .. :try_end_300} :catchall_ab

    move-object v0, v2

    goto/16 :goto_95

    :cond_303
    :try_start_303
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "v"

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cmd"

    const-string v3, "pay"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "params"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pay_type"

    const-string v4, "2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pay_mode"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bind"

    const-string v4, "no"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier_tp"

    invoke-virtual {v3, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "icc_data"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "DCD"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "csn"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "CSN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "card_seq_id"

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "5F34"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_412

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "5F34"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_36a
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "submit_time"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->m:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sp_id"

    const-string v4, "8889"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pin"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "PIN"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pan"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "AN1"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "carrier_app_tp"

    const-string v4, "2"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v4, "ED"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b3

    const-string v0, "expire"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "ED"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b3
    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v4, "TD2"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3ca

    const-string v0, "track2_data"

    sget-object v4, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v5, "TD2"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3ca
    if-eqz p5, :cond_416

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_416

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_416

    const-string v0, "pan"

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pin"

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3ee
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_416

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_401
    .catch Lorg/json/JSONException; {:try_start_303 .. :try_end_401} :catch_402
    .catchall {:try_start_303 .. :try_end_401} :catchall_ab

    goto :goto_3ee

    :catch_402
    move-exception v0

    :try_start_403
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    const-string v0, "action_resp_code"

    const-string v1, "10019"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40f
    .catchall {:try_start_403 .. :try_end_40f} :catchall_ab

    move-object v0, v2

    goto/16 :goto_95

    :cond_412
    :try_start_412
    const-string v0, ""

    goto/16 :goto_36a

    :cond_416
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_419
    .catch Lorg/json/JSONException; {:try_start_412 .. :try_end_419} :catch_402
    .catchall {:try_start_412 .. :try_end_419} :catchall_ab

    move-result-object v0

    :try_start_41a
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->d:Lcom/unionpay/mobile/android/fully/a;

    invoke-interface {v1, v0}, Lcom/unionpay/mobile/android/fully/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_resp_message"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V
    :try_end_42d
    .catchall {:try_start_41a .. :try_end_42d} :catchall_ab

    move-object v0, v2

    goto/16 :goto_95

    :cond_430
    move-object v0, v1

    goto/16 :goto_2e2
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_10
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xft
        -0x60t
        0x0t
        0x0t
        0x3t
        0x33t
        0x43t
        0x55t
        0x50t
        0x2dt
        0x4dt
        0x4ft
        0x42t
        0x49t
        0x4ct
        0x45t
    .end array-data
.end method

.method public final a(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const-string v1, "80F802"

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    const-string v2, "08"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4e
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public final declared-synchronized a(Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/AppIdentification;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/unionpay/mobile/android/pboctransaction/d;->d()V

    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/d;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_31

    move-result v2

    if-nez v2, :cond_1a

    :cond_18
    :goto_18
    monitor-exit p0

    return-object v0

    :cond_1a
    :try_start_1a
    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    sget-object v0, Lcom/unionpay/mobile/android/pboctransaction/d;->o:Ljava/util/HashMap;

    const-string v1, "5A"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_31

    goto :goto_18

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->d()V

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/pboctransaction/c;->d()V

    const-string v1, "84"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/pboctransaction/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->d()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/c;->b()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/c;->a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->c:Lcom/unionpay/mobile/android/pboctransaction/c;

    invoke-interface {v1}, Lcom/unionpay/mobile/android/pboctransaction/c;->c()V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->i:B

    iput-byte v0, p0, Lcom/unionpay/mobile/android/pboctransaction/d;->g:B

    const-string v0, "80F2000102"

    invoke-static {v0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/d;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
