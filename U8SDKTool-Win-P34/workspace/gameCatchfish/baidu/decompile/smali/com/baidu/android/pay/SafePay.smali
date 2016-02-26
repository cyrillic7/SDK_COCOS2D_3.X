.class public final Lcom/baidu/android/pay/SafePay;
.super Ljava/lang/Object;


# static fields
.field public static final INPUT_ID_CVV:I = 0x2

.field public static final INPUT_ID_CVV_MAX_LEN:I = 0x3

.field public static final INPUT_ID_PW:I = 0x1

.field public static final KEY:Ljava/lang/String; = "key"

.field private static a:Lcom/baidu/android/pay/SafePay;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "bd_wsp_v1_0"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/android/pay/SafePay;
    .registers 2

    const-class v1, Lcom/baidu/android/pay/SafePay;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/baidu/android/pay/SafePay;->a:Lcom/baidu/android/pay/SafePay;

    if-nez v0, :cond_13

    new-instance v0, Lcom/baidu/android/pay/SafePay;

    invoke-direct {v0}, Lcom/baidu/android/pay/SafePay;-><init>()V

    sput-object v0, Lcom/baidu/android/pay/SafePay;->a:Lcom/baidu/android/pay/SafePay;

    sget-object v0, Lcom/baidu/android/pay/SafePay;->a:Lcom/baidu/android/pay/SafePay;

    invoke-virtual {v0}, Lcom/baidu/android/pay/SafePay;->init()V

    :cond_13
    sget-object v0, Lcom/baidu/android/pay/SafePay;->a:Lcom/baidu/android/pay/SafePay;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unicodeDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    const/16 v2, 0x5c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x75

    :goto_e
    if-ge v0, v3, :cond_45

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_3f

    add-int/lit8 v6, v0, 0x1

    if-eq v6, v3, :cond_3f

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_3f

    if-eqz p0, :cond_3c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3c

    add-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v0, 0x6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3c
    add-int/lit8 v0, v0, 0x6

    goto :goto_e

    :cond_3f
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native clearKeyboard(I)V
.end method

.method public native encrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getA(J)Ljava/lang/String;
.end method

.method public native getB(I)Ljava/lang/String;
.end method

.method public native getC(I)Ljava/lang/String;
.end method

.method public native getSafeStr(I)Ljava/lang/String;
.end method

.method public native getpw()Ljava/lang/String;
.end method

.method public native init()V
.end method

.method public native inputKeyboardChar(ICI)I
.end method

.method public native localDecrypt(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native localEncrypt(Ljava/lang/String;)Ljava/lang/String;
.end method
