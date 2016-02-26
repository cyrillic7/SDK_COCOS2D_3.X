.class Lcom/u8/sdk/ChooseLoginTypeActivity$3;
.super Ljava/lang/Object;
.source "ChooseLoginTypeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/u8/sdk/ChooseLoginTypeActivity$3;->this$0:Lcom/u8/sdk/ChooseLoginTypeActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 95
    invoke-static {}, Lcom/u8/sdk/plugin/U8User;->getInstance()Lcom/u8/sdk/plugin/U8User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/plugin/U8User;->exit()V

    .line 96
    return-void
.end method
