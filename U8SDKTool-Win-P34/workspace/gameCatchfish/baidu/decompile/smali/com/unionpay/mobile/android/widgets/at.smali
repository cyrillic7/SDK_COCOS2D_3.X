.class public final Lcom/unionpay/mobile/android/widgets/at;
.super Lcom/unionpay/mobile/android/widgets/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/widgets/at;->h:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/at;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/at;->a()Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/at;->i:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/unionpay/mobile/android/widgets/at;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_27

    iget-object v1, p0, Lcom/unionpay/mobile/android/widgets/at;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_6

    :cond_24
    const-string v0, ""

    goto :goto_11

    :cond_27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_37

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x40

    if-gt v0, v2, :cond_37

    move v0, v1

    goto :goto_6

    :cond_37
    const/4 v0, 0x0

    goto :goto_6
.end method
