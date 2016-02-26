.class public Lcom/adobe/air/AndroidAlertDialog;
.super Ljava/lang/Object;
.source "AndroidAlertDialog.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
