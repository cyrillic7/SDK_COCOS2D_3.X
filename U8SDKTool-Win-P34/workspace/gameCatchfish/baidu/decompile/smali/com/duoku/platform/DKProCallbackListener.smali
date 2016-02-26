.class public Lcom/duoku/platform/DKProCallbackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# static fields
.field private static mDKSupportForAPIListner:Lcom/duoku/platform/IDKSDKCallBack;

.field private static mDKSuspendWindowListener:Lcom/duoku/platform/IDKSDKCallBack;

.field private static mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

.field private static mOnInitCompleteListener:Lcom/duoku/platform/IDKSDKCallBack;

.field private static mOnLoginProcessListener:Lcom/duoku/platform/IDKSDKCallBack;

.field private static mOnsessionFailedListener:Lcom/duoku/platform/IDKSDKCallBack;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Lcom/duoku/platform/DKProCallbackListener$1;

    invoke-direct {v0}, Lcom/duoku/platform/DKProCallbackListener$1;-><init>()V

    sput-object v0, Lcom/duoku/platform/DKProCallbackListener;->mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

    .line 151
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onDKSupportForAPILoginProcess(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 155
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mDKSupportForAPIListner:Lcom/duoku/platform/IDKSDKCallBack;

    if-eqz v0, :cond_a

    .line 157
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mDKSupportForAPIListner:Lcom/duoku/platform/IDKSDKCallBack;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    .line 163
    :goto_9
    return-void

    .line 161
    :cond_a
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static onInitComplete(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mOnInitCompleteListener:Lcom/duoku/platform/IDKSDKCallBack;

    if-eqz v0, :cond_a

    .line 45
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mOnInitCompleteListener:Lcom/duoku/platform/IDKSDKCallBack;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    .line 51
    :goto_9
    return-void

    .line 49
    :cond_a
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static onLoginProcess(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 107
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mOnLoginProcessListener:Lcom/duoku/platform/IDKSDKCallBack;

    if-eqz v0, :cond_a

    .line 109
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mOnLoginProcessListener:Lcom/duoku/platform/IDKSDKCallBack;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    .line 115
    :goto_9
    return-void

    .line 113
    :cond_a
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static onSessionFailed(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 65
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mOnsessionFailedListener:Lcom/duoku/platform/IDKSDKCallBack;

    if-eqz v0, :cond_a

    .line 67
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mOnsessionFailedListener:Lcom/duoku/platform/IDKSDKCallBack;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    .line 73
    :goto_9
    return-void

    .line 71
    :cond_a
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static onSuspendWindowChangeUser(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 119
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mDKSuspendWindowListener:Lcom/duoku/platform/IDKSDKCallBack;

    if-eqz v0, :cond_a

    .line 124
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mDKSuspendWindowListener:Lcom/duoku/platform/IDKSDKCallBack;

    invoke-virtual {v0, p0}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    .line 139
    :goto_9
    return-void

    .line 129
    :cond_a
    sget-object v0, Lcom/duoku/platform/DKProCallbackListener;->mIdksdkCallBack:Lcom/duoku/platform/IDKSDKCallBack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoku/platform/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static setDKSuspendWindowListener(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1

    .prologue
    .line 102
    sput-object p0, Lcom/duoku/platform/DKProCallbackListener;->mDKSuspendWindowListener:Lcom/duoku/platform/IDKSDKCallBack;

    .line 103
    return-void
.end method

.method public static setOnLoginProcessListener(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1

    .prologue
    .line 92
    sput-object p0, Lcom/duoku/platform/DKProCallbackListener;->mOnLoginProcessListener:Lcom/duoku/platform/IDKSDKCallBack;

    .line 93
    return-void
.end method

.method public static setmDKSupportForAPIListner(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1

    .prologue
    .line 82
    sput-object p0, Lcom/duoku/platform/DKProCallbackListener;->mDKSupportForAPIListner:Lcom/duoku/platform/IDKSDKCallBack;

    .line 83
    return-void
.end method

.method public static setmOnInitCompleteListener(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/duoku/platform/DKProCallbackListener;->mOnInitCompleteListener:Lcom/duoku/platform/IDKSDKCallBack;

    .line 34
    return-void
.end method

.method public static setmOnsessionFailedListener(Lcom/duoku/platform/IDKSDKCallBack;)V
    .registers 1

    .prologue
    .line 60
    sput-object p0, Lcom/duoku/platform/DKProCallbackListener;->mOnsessionFailedListener:Lcom/duoku/platform/IDKSDKCallBack;

    .line 61
    return-void
.end method
