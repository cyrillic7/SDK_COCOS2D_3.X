.class public Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;
.super Ljava/lang/Object;
.source "MsdkThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/handle/MsdkThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QQA8Info"
.end annotation


# instance fields
.field notifyState:I

.field openAuthData:Ljava/lang/String;

.field openAuthSt:Ljava/lang/String;

.field final synthetic this$0:Lcom/tencent/msdk/handle/MsdkThreadManager;


# direct methods
.method public constructor <init>(Lcom/tencent/msdk/handle/MsdkThreadManager;)V
    .registers 3

    .prologue
    .line 191
    iput-object p1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->this$0:Lcom/tencent/msdk/handle/MsdkThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->openAuthData:Ljava/lang/String;

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->openAuthSt:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->notifyState:I

    return-void
.end method
