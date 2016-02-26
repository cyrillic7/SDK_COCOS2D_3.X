.class public Lcom/tencent/msdk/login/WxFirstLoginInfo;
.super Ljava/lang/Object;
.source "WxFirstLoginInfo.java"


# instance fields
.field public notifyState:I

.field public wxCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/login/WxFirstLoginInfo;->wxCode:Ljava/lang/String;

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/login/WxFirstLoginInfo;->notifyState:I

    return-void
.end method
