.class public Lcom/nearme/game/sdk/common/model/ApiResult;
.super Ljava/lang/Object;
.source "ApiResult.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final RESULT_CODE_CANCEL:I = 0x3ec

.field public static final RESULT_CODE_FAILED:I = 0x3f2

.field public static final RESULT_CODE_NET_ERROR:I = 0x3f3

.field public static final RESULT_CODE_SUCCESS:I = 0x3e9

.field private static final serialVersionUID:J = -0x6db46b3140d7a84dL


# instance fields
.field public requestCode:I

.field public resultCode:I

.field public resultMsg:Ljava/lang/String;

.field public seq:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
