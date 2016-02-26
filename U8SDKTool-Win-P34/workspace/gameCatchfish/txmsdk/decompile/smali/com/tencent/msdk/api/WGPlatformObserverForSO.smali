.class public Lcom/tencent/msdk/api/WGPlatformObserverForSO;
.super Ljava/lang/Object;
.source "WGPlatformObserverForSO.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native OnCrashExtMessageNotify()Ljava/lang/String;
.end method

.method public static native OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V
.end method

.method public static native OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
.end method

.method public static native OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V
.end method
