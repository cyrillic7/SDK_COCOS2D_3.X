.class public final Lcom/unionpay/uppay/PayActivity;
.super Lcom/unionpay/mobile/android/plugin/BaseActivity;


# instance fields
.field private c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

.field private d:Lcom/unionpay/mobile/android/utils/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "entryexstd"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    return-void
.end method


# virtual methods
.method public final a(ILcom/unionpay/mobile/android/model/d;)Lcom/unionpay/mobile/android/nocard/views/b;
    .registers 4

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_12

    :goto_4
    return-object v0

    :sswitch_5
    new-instance v0, Lcom/unionpay/mobile/android/pro/views/c;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/c;-><init>(Landroid/content/Context;)V

    goto :goto_4

    :sswitch_b
    new-instance v0, Lcom/unionpay/mobile/android/pro/views/d;

    invoke-direct {v0, p0, p2}, Lcom/unionpay/mobile/android/pro/views/d;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/d;)V

    goto :goto_4

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_5
        0x6 -> :sswitch_b
    .end sparse-switch
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-class v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :cond_1b
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :goto_1d
    return-object v0

    :cond_1e
    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1d
.end method

.method public final d()Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;
    .registers 2

    new-instance v0, Lcom/unionpay/mobile/android/utils/l;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/utils/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/utils/l;

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/utils/l;

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a()V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->c:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :cond_f
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/utils/l;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/utils/l;->f()V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/utils/l;

    return-void
.end method
