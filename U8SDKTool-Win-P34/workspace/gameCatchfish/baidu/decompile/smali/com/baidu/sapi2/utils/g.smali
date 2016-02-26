.class public Lcom/baidu/sapi2/utils/g;
.super Ljava/lang/Object;
.source "AES.java"


# static fields
.field private static final a:Ljava/lang/String; = "UTF-8"

.field private static final b:Ljava/lang/String; = "AES/CBC/NoPadding"

.field private static final c:Ljava/lang/String; = "AES"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 24
    const-string v0, "AES"

    const-string v1, "AES/CBC/NoPadding"

    const-string v2, "UTF-8"

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/sapi2/utils/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "algorithmMode"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/sapi2/utils/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "algorithmMode"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/baidu/sapi2/utils/g;->d:Ljava/lang/String;

    .line 20
    const-string v0, "AES/CBC/NoPadding"

    iput-object v0, p0, Lcom/baidu/sapi2/utils/g;->e:Ljava/lang/String;

    .line 21
    const-string v0, "AES"

    iput-object v0, p0, Lcom/baidu/sapi2/utils/g;->f:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/baidu/sapi2/utils/g;->f:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/baidu/sapi2/utils/g;->e:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/baidu/sapi2/utils/g;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 74
    const/16 v2, 0x20

    .line 75
    .local v2, "paddingChar":C
    const/16 v3, 0x10

    .line 76
    .local v3, "size":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    rem-int v4, v5, v3

    .line 77
    .local v4, "x":I
    sub-int v1, v3, v4

    .line 79
    .local v1, "padLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_23

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 83
    :cond_23
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_10

    .line 39
    :cond_8
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Empty string"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 40
    :cond_10
    const/4 v2, 0x0

    .line 42
    .local v2, "encrypted":[B
    :try_start_11
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/baidu/sapi2/utils/g;->d:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 43
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/sapi2/utils/g;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 44
    .local v4, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v5, p0, Lcom/baidu/sapi2/utils/g;->e:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 45
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-static {p1}, Lcom/baidu/sapi2/utils/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_3c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_3c} :catch_3e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_11 .. :try_end_3c} :catch_43

    move-result-object v2

    .line 52
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_3d
    return-object v2

    .line 47
    :catch_3e
    move-exception v1

    .line 48
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3d

    .line 49
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_43
    move-exception v1

    .line 50
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-static {v1}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_3d
.end method

.method public a([BLjava/lang/String;Ljava/lang/String;)[B
    .registers 11
    .param p1, "code"    # [B
    .param p2, "iv"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    if-eqz p1, :cond_5

    array-length v5, p1

    if-nez v5, :cond_d

    .line 57
    :cond_5
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Empty string"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 59
    :cond_d
    const/4 v5, 0x0

    new-array v1, v5, [B

    .line 62
    .local v1, "decrypted":[B
    :try_start_10
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v5, p0, Lcom/baidu/sapi2/utils/g;->d:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 63
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/sapi2/utils/g;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 64
    .local v4, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v5, p0, Lcom/baidu/sapi2/utils/g;->e:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 65
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_33} :catch_35

    move-result-object v1

    .line 70
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_34
    return-object v1

    .line 67
    :catch_35
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_34
.end method
