.class public Lcom/qbao/core/util/j;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field private static final cn:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[B[B)[B
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/4 v0, 0x0

    .line 19
    :try_start_3
    const-string v1, "RSA/ECB/PKCS1Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 20
    invoke-static {p1}, Lcom/qbao/core/util/j;->i([B)Ljava/security/PublicKey;

    move-result-object v1

    .line 21
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 22
    array-length v3, p2

    .line 23
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v1, v0

    .line 27
    :goto_18
    sub-int v5, v3, v0

    if-gtz v5, :cond_24

    .line 37
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 38
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 43
    :goto_23
    return-object v0

    .line 28
    :cond_24
    sub-int v5, v3, v0

    if-le v5, v7, :cond_3b

    .line 29
    const/16 v5, 0x80

    invoke-virtual {v2, p2, v0, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 33
    :goto_2e
    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 34
    add-int/lit8 v0, v1, 0x1

    .line 35
    mul-int/lit16 v1, v0, 0x80

    move v8, v0

    move v0, v1

    move v1, v8

    goto :goto_18

    .line 31
    :cond_3b
    sub-int v5, v3, v0

    invoke-virtual {v2, p2, v0, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_40} :catch_42

    move-result-object v0

    goto :goto_2e

    .line 40
    :catch_42
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private static i([B)Ljava/security/PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 54
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 55
    return-object v0
.end method
