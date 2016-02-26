.class public Lcom/tencent/msdk/remote/api/RemoteApiWrapper;
.super Ljava/lang/Object;
.source "RemoteApiWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WGQueryQQUserInfo()Z
    .registers 2

    .prologue
    .line 7
    new-instance v0, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;-><init>()V

    .line 8
    .local v0, "qqMyInfo":Lcom/tencent/msdk/remote/api/QueryQQUserInfo;
    invoke-virtual {v0}, Lcom/tencent/msdk/remote/api/QueryQQUserInfo;->send()V

    .line 9
    const/4 v1, 0x1

    return v1
.end method

.method public static WGQueryWXUserInfo()Z
    .registers 2

    .prologue
    .line 13
    new-instance v0, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;-><init>()V

    .line 14
    .local v0, "wxMyInfo":Lcom/tencent/msdk/remote/api/QueryWXUserInfo;
    invoke-virtual {v0}, Lcom/tencent/msdk/remote/api/QueryWXUserInfo;->send()V

    .line 15
    const/4 v1, 0x1

    return v1
.end method
