.class public Lcom/tencent/msdk/permission/PermissionState;
.super Ljava/lang/Object;
.source "PermissionState.java"


# instance fields
.field public code:I

.field public describe:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/permission/PermissionState;->code:I

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/permission/PermissionState;->describe:Ljava/lang/String;

    return-void
.end method
