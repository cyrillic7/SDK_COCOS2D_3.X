.class public Lcom/baidu/sapi2/share/SoftToken;
.super Ljava/lang/Object;
.source "SoftToken.java"


# static fields
.field private static final a:Ljava/lang/String; = "sapi_web_connector_v1"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 17
    :try_start_0
    const-string v1, "sapi_web_connector_v1"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 21
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    return-void

    .line 18
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 19
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getToken(Ljava/lang/String;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
