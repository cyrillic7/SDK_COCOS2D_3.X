.class public final Lcom/unionpay/mobile/android/widgets/an;
.super Lcom/unionpay/mobile/android/widgets/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILorg/json/JSONObject;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/widgets/z;-><init>(Landroid/content/Context;ILorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/widgets/an;->b:Lcom/unionpay/mobile/android/widgets/t;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/t;->a(I)V

    return-void
.end method


# virtual methods
.method public final b()Z
    .registers 2

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/widgets/an;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
