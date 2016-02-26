.class public Lcom/tencent/msdk/permission/PermissionInfo;
.super Ljava/lang/Object;
.source "PermissionInfo.java"


# instance fields
.field public permission:Ljava/lang/String;

.field public qqAppId:Ljava/lang/String;

.field public wxAppId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/tencent/msdk/permission/PermissionInfo;->qqAppId:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/tencent/msdk/permission/PermissionInfo;->wxAppId:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/tencent/msdk/permission/PermissionInfo;->permission:Ljava/lang/String;

    return-void
.end method
