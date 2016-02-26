.class Lcom/xiaomi/licensinglibrary/c;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

.field private b:Landroid/app/AlertDialog;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/licensinglibrary/c;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    :cond_14
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public a(I)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/c;->a()V

    const-string v0, ""

    sparse-switch p1, :sswitch_data_2c

    :goto_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/c;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    # getter for: Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1c
    return-void

    :sswitch_1d
    const-string v0, "\u4f60\u5df2\u7ecf\u8d2d\u4e70\u8fc7\u8be5\u6e38\u620f"

    goto :goto_8

    :sswitch_20
    const-string v0, "\u521b\u5efa\u8ba2\u5355\u5931\u8d25"

    goto :goto_8

    :sswitch_23
    const-string v0, "\u8d2d\u4e70\u5931\u8d25"

    goto :goto_8

    :sswitch_26
    const-string v0, "\u65e0\u6cd5\u4f7f\u7528\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u4f60\u7684\u7f51\u7edc\u8fde\u63a5\u72b6\u6001"

    goto :goto_8

    :sswitch_29
    const-string v0, "\u672a\u5b89\u88c5\u5c0f\u7c73\u6e38\u620f\u4e2d\u5fc3\u798f\u5229\u52a9\u624b!"

    goto :goto_8

    :sswitch_data_2c
    .sparse-switch
        -0x4653 -> :sswitch_23
        0x3ea -> :sswitch_29
        0xfa2 -> :sswitch_26
        0x138b -> :sswitch_20
        0x138c -> :sswitch_1d
    .end sparse-switch
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/c;->a()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8d2d\u4e70\u8be5\u6e38\u620f\u540e\uff0c\u4f60\u624d\u80fd\u4f7f\u7528\u8be5\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/xiaomi/licensinglibrary/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/d;-><init>(Lcom/xiaomi/licensinglibrary/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/xiaomi/licensinglibrary/e;

    invoke-direct {v2, p0}, Lcom/xiaomi/licensinglibrary/e;-><init>(Lcom/xiaomi/licensinglibrary/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u8d2d\u4e70"

    new-instance v2, Lcom/xiaomi/licensinglibrary/f;

    invoke-direct {v2, p0}, Lcom/xiaomi/licensinglibrary/f;-><init>(Lcom/xiaomi/licensinglibrary/c;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;

    :try_start_33
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_39

    :goto_38
    return-void

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/licensinglibrary/c;->a()V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :try_start_10
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method
