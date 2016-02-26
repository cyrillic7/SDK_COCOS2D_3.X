.class Lcom/u8/sdk/ChooseLoginTypeActivity$2;
.super Landroid/os/Handler;
.source "ChooseLoginTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/ChooseLoginTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ChooseLoginTypeActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$2;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    .line 99
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_26

    .line 131
    :goto_5
    :pswitch_5
    return-void

    .line 105
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$2;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u786e\u5b9a\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    const-string v1, "\u786e\u5b9a"

    .line 108
    new-instance v2, Lcom/u8/sdk/ChooseLoginTypeActivity$2$1;

    invoke-direct {v2, p0}, Lcom/u8/sdk/ChooseLoginTypeActivity$2$1;-><init>(Lcom/u8/sdk/ChooseLoginTypeActivity$2;)V

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_5

    .line 102
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
