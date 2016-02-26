.class Lcom/u8/sdk/ChooseLoginTypeActivity$5;
.super Ljava/lang/Object;
.source "ChooseLoginTypeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ChooseLoginTypeActivity;->exit()V
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
    iput-object p1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$5;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 115
    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->exit()V

    .line 117
    iget-object v0, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$5;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->finish()V

    .line 118
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 122
    return-void
.end method
