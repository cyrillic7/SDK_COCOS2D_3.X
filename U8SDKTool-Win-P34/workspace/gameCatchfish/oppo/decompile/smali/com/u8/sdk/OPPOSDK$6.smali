.class Lcom/u8/sdk/OPPOSDK$6;
.super Ljava/lang/Object;
.source "OPPOSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/GameExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OPPOSDK;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OPPOSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OPPOSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OPPOSDK$6;->this$0:Lcom/u8/sdk/OPPOSDK;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exitGame()V
    .registers 2

    .prologue
    .line 204
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/nearme/game/sdk/common/util/AppUtil;->exitGameProcess(Landroid/app/Activity;)V

    .line 205
    return-void
.end method
