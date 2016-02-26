.class public Lcom/qbao/sdk/a/b;
.super Ljava/lang/Object;
.source "GamePayAssist.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static W(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 159
    :try_start_0
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_1c

    move-result v0

    if-eqz v0, :cond_b

    .line 160
    const-string v0, "0"

    .line 167
    :goto_a
    return-object v0

    .line 162
    :cond_b
    :try_start_b
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 163
    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    .line 164
    float-to-int v0, v0

    .line 165
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1a} :catch_1c

    move-result-object v0

    goto :goto_a

    .line 166
    :catch_1c
    move-exception v0

    .line 167
    const-string v0, "0"

    goto :goto_a
.end method

.method public static X(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 175
    if-eqz p0, :cond_19

    :try_start_3
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_16} :catch_72

    move-result v1

    if-eqz v1, :cond_1c

    .line 176
    :cond_19
    const-string v0, "0"

    .line 198
    :goto_1b
    return-object v0

    .line 179
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x3

    if-nez v1, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    move v3, v1

    .line 181
    :goto_2b
    invoke-static {p0}, Lcom/qbao/sdk/e/h;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    .line 184
    :goto_35
    if-lt v2, v3, :cond_4b

    .line 195
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-static {v0}, Lcom/qbao/sdk/e/h;->au(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 179
    :cond_41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    goto :goto_2b

    .line 186
    :cond_4b
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v1, v6, :cond_67

    .line 187
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :goto_5a
    add-int/lit8 v1, v3, -0x1

    if-ge v2, v1, :cond_63

    .line 192
    const-string v1, ","

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_63
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_35

    .line 189
    :cond_67
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_70} :catch_72

    move v0, v1

    goto :goto_5a

    .line 196
    :catch_72
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    const-string v0, "0"

    goto :goto_1b
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V
    .registers 5

    .prologue
    .line 129
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    .line 130
    const-string v1, "sdkflowId"

    invoke-virtual {v0, v1, p0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "transDate"

    invoke-virtual {v0, v1, p1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Lcom/qbao/sdk/a/b$3;

    invoke-direct {v1, v0, p2}, Lcom/qbao/sdk/a/b$3;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/c;)V

    .line 154
    invoke-virtual {v1}, Lcom/qbao/sdk/b/c;->y()V

    .line 155
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 10

    .prologue
    .line 84
    new-instance v1, Lcom/qbao/core/c/f;

    invoke-direct {v1}, Lcom/qbao/core/c/f;-><init>()V

    .line 85
    const-string v0, "appCode"

    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qbao/sdk/a/e;->ar()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 87
    const-string v0, "msgCode"

    invoke-virtual {v1, v0, p1}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_1d
    const-string v2, "useBqFlag"

    if-eqz p2, :cond_5f

    const-string v0, "1"

    :goto_23
    invoke-virtual {v1, v2, v0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v2, "transPassWord"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDUn+hM/Ae5ptuusz4aFSaPQtZPucsA4wVoyoA+8hLMTHuEWcdjdKewcf9bFH2krwtpo6CG0CGFBj9ivf8nGzeCc6t68fM5InV0oOxUujXBXhXpEvvDu9F+Yadnv6lx8M0raWRx8uhKUhdzPKEbiaiMJPIh4IdLgzxOYlskYr9DwIDAQAB"

    invoke-static {v0, v3}, Lcom/qbao/core/util/i;->i([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_56} :catch_62

    .line 96
    :goto_56
    new-instance v0, Lcom/qbao/sdk/a/b$2;

    invoke-direct {v0, v1, p5}, Lcom/qbao/sdk/a/b$2;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 118
    invoke-virtual {v0}, Lcom/qbao/sdk/b/c;->y()V

    .line 119
    return-void

    .line 89
    :cond_5f
    const-string v0, "0"

    goto :goto_23

    .line 93
    :catch_62
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56
.end method

.method public static a(Lorg/json/JSONObject;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 28
    invoke-static {}, Lcom/qbao/sdk/a/e;->an()Lcom/qbao/sdk/a/e;

    move-result-object v0

    if-eqz v0, :cond_9

    if-nez p0, :cond_f

    .line 29
    :cond_9
    const-string v0, "getInstance == null or payInfo == null"

    invoke-interface {p1, v1, v0}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 70
    :goto_e
    return-void

    .line 32
    :cond_f
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/a;->ac()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 33
    :cond_23
    const-string v0, "GameLogin.getInstance() == null or uid == null"

    invoke-interface {p1, v1, v0}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    goto :goto_e

    .line 37
    :cond_29
    new-instance v0, Lcom/qbao/core/c/f;

    invoke-direct {v0}, Lcom/qbao/core/c/f;-><init>()V

    .line 38
    const-string v1, "transType"

    const-string v2, "2012"

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "appSource"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "appCode"

    const-string v2, "appCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "orderNo"

    const-string v2, "orderNo"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "payCode"

    const-string v2, "payCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "payNotifyUrl"

    const-string v2, "payNotifyUrl"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v1, "userId"

    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qbao/sdk/a/a;->ac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "signCode"

    const-string v2, "signCode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "signType"

    const-string v2, "RSA"

    invoke-virtual {v0, v1, v2}, Lcom/qbao/core/c/f;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v1, Lcom/qbao/sdk/a/b$1;

    invoke-direct {v1, v0, p1}, Lcom/qbao/sdk/a/b$1;-><init>(Lcom/qbao/core/c/f;Lcom/qbao/core/a/b;)V

    .line 69
    invoke-virtual {v1}, Lcom/qbao/sdk/b/c;->y()V

    goto/16 :goto_e
.end method
