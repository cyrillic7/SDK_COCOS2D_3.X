.class Lcom/u8/sdk/ChooseLoginTypeActivity$1;
.super Ljava/lang/Object;
.source "ChooseLoginTypeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$1;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 85
    packed-switch p2, :pswitch_data_10

    .line 96
    :goto_3
    :pswitch_3
    return-void

    .line 88
    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 89
    iget-object v0, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$1;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/ChooseLoginTypeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_3

    .line 85
    :pswitch_data_10
    .packed-switch -0x2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
