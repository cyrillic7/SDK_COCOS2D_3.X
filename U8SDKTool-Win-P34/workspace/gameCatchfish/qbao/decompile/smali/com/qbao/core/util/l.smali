.class public Lcom/qbao/core/util/l;
.super Ljava/lang/Object;
.source "Shared.java"


# static fields
.field static cy:Ljava/lang/String;

.field static cz:C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    sput-object v0, Lcom/qbao/core/util/l;->cy:Ljava/lang/String;

    .line 6
    const/16 v0, 0x3d

    sput-char v0, Lcom/qbao/core/util/l;->cz:C

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
