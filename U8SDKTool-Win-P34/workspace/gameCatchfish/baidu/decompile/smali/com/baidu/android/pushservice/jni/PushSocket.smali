.class public Lcom/baidu/android/pushservice/jni/PushSocket;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:[B

.field private static c:I

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sput v1, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    const-string v0, "socket"

    sput-object v0, Lcom/baidu/android/pushservice/jni/PushSocket;->d:Ljava/lang/String;

    const/16 v0, 0x24

    sput v0, Lcom/baidu/android/pushservice/jni/PushSocket;->e:I

    const/16 v0, 0x20

    sput v0, Lcom/baidu/android/pushservice/jni/PushSocket;->f:I

    sput-boolean v1, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z

    :try_start_14
    const-string v0, "bdpush_V2_3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_14 .. :try_end_1c} :catch_1d

    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    sget-object v0, Lcom/baidu/android/pushservice/jni/PushSocket;->d:Ljava/lang/String;

    const-string v1, "Native library not found! Please copy libbdpush_V2_3.so into your project!"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public static a([BI)S
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static a(I)V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    const/4 v0, 0x0

    sput v0, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    invoke-static {p0}, Lcom/baidu/android/pushservice/jni/PushSocket;->closeSocket(I)I

    return-void
.end method

.method public static a()Z
    .registers 2

    sget-boolean v0, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "bdpush_V2_3"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z
    :try_end_c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_c} :catch_f

    :cond_c
    :goto_c
    sget-boolean v0, Lcom/baidu/android/pushservice/jni/PushSocket;->a:Z

    return v0

    :catch_f
    move-exception v0

    sget-object v0, Lcom/baidu/android/pushservice/jni/PushSocket;->d:Ljava/lang/String;

    const-string v1, "Native library not found! Please copy libbdpush_V2_3.so into your project!"

    invoke-static {v0, v1}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c
.end method

.method public static b([BI)I
    .registers 4

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static b(I)[B
    .registers 8

    const/4 v6, 0x0

    const/4 v0, 0x0

    :cond_2
    :goto_2
    sget-object v1, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    if-eqz v1, :cond_bd

    sget-object v1, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    array-length v1, v1

    sget v2, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    if-ne v1, v2, :cond_12

    sput-object v0, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sput v6, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    goto :goto_2

    :cond_12
    sget v2, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sub-int v2, v1, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_b6

    sget-object v2, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/jni/PushSocket;->a([BI)S

    move-result v2

    sget-object v3, Lcom/baidu/android/pushservice/jni/PushSocket;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/message/g;->f:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v3

    if-eq v2, v3, :cond_49

    sget-object v3, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v3

    if-ne v2, v3, :cond_75

    :cond_49
    const/4 v0, 0x2

    new-array v0, v0, [B

    sget-object v1, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    array-length v4, v0

    invoke-static {v1, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_6e

    sget-object v1, Lcom/baidu/android/pushservice/message/g;->g:Lcom/baidu/android/pushservice/message/g;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/message/g;->a()I

    move-result v1

    if-ne v2, v1, :cond_6e

    sget-object v1, Lcom/baidu/android/pushservice/jni/PushSocket;->d:Ljava/lang/String;

    const-string v2, "MSG_ID_TINY_HEARTBEAT_SERVER"

    invoke-static {v1, v2}, Lcom/baidu/frontia/a/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MSG_ID_TINY_HEARTBEAT_SERVER"

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/f;->b(Ljava/lang/String;)V

    :cond_6e
    sget v1, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    :cond_74
    :goto_74
    return-object v0

    :cond_75
    sget v2, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sub-int v2, v1, v2

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->e:I

    if-ge v2, v3, :cond_83

    invoke-static {p0}, Lcom/baidu/android/pushservice/jni/PushSocket;->c(I)Z

    move-result v2

    if-eqz v2, :cond_74

    :cond_83
    sget-object v2, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sget v4, Lcom/baidu/android/pushservice/jni/PushSocket;->f:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/jni/PushSocket;->b([BI)I

    move-result v2

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    add-int/2addr v3, v2

    sget v4, Lcom/baidu/android/pushservice/jni/PushSocket;->e:I

    add-int/2addr v3, v4

    sget v4, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sub-int/2addr v1, v4

    if-gt v3, v1, :cond_af

    sget v0, Lcom/baidu/android/pushservice/jni/PushSocket;->e:I

    add-int/2addr v0, v2

    new-array v0, v0, [B

    sget-object v1, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    array-length v4, v0

    invoke-static {v1, v3, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sget v3, Lcom/baidu/android/pushservice/jni/PushSocket;->e:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sput v1, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    goto :goto_74

    :cond_af
    invoke-static {p0}, Lcom/baidu/android/pushservice/jni/PushSocket;->c(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_74

    :cond_b6
    invoke-static {p0}, Lcom/baidu/android/pushservice/jni/PushSocket;->c(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_74

    :cond_bd
    invoke-static {p0}, Lcom/baidu/android/pushservice/jni/PushSocket;->c(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_74
.end method

.method private static c(I)Z
    .registers 8

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/jni/PushSocket;->rcvMsg(I)[B

    move-result-object v1

    if-eqz v1, :cond_a

    array-length v2, v1

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    sget-object v2, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    if-nez v2, :cond_13

    sput-object v1, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    :goto_11
    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    sget-object v2, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    array-length v2, v2

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [B

    sget-object v3, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    sget v4, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sget-object v5, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    array-length v5, v5

    sget v6, Lcom/baidu/android/pushservice/jni/PushSocket;->c:I

    sub-int/2addr v5, v6

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v3, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    array-length v3, v3

    array-length v4, v1

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v2, Lcom/baidu/android/pushservice/jni/PushSocket;->b:[B

    goto :goto_11
.end method

.method public static native closeSocket(I)I
.end method

.method public static native createSocket(Ljava/lang/String;I)I
.end method

.method public static native getLastSocketError()I
.end method

.method private static native rcvMsg(I)[B
.end method

.method public static native sendMsg(I[BI)I
.end method
