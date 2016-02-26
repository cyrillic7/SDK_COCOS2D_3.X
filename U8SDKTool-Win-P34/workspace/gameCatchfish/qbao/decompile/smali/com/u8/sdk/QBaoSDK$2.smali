.class Lcom/u8/sdk/QBaoSDK$2;
.super Ljava/lang/Object;
.source "QBaoSDK.java"

# interfaces
.implements Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/QBaoSDK;->exit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/QBaoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/QBaoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/QBaoSDK$2;->this$0:Lcom/u8/sdk/QBaoSDK;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelExit()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public onConfirmExit()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method
