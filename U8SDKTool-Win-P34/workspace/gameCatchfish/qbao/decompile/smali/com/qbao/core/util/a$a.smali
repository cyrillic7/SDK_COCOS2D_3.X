.class public final enum Lcom/qbao/core/util/a$a;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qbao/core/util/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum bN:Lcom/qbao/core/util/a$a;

.field public static final enum bO:Lcom/qbao/core/util/a$a;

.field public static final enum bP:Lcom/qbao/core/util/a$a;

.field public static final enum bQ:Lcom/qbao/core/util/a$a;

.field public static final enum bR:Lcom/qbao/core/util/a$a;

.field public static final enum bS:Lcom/qbao/core/util/a$a;

.field public static final enum bT:Lcom/qbao/core/util/a$a;

.field public static final enum bU:Lcom/qbao/core/util/a$a;

.field private static final synthetic bV:[Lcom/qbao/core/util/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bN:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "WIFI"

    invoke-direct {v0, v1, v4}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bO:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "CMWAP"

    invoke-direct {v0, v1, v5}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bP:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "CMNET"

    invoke-direct {v0, v1, v6}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bQ:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "UNWAP"

    invoke-direct {v0, v1, v7}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bR:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "UNNET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bS:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "CTWAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bT:Lcom/qbao/core/util/a$a;

    new-instance v0, Lcom/qbao/core/util/a$a;

    const-string v1, "CTNET"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/qbao/core/util/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qbao/core/util/a$a;->bU:Lcom/qbao/core/util/a$a;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/qbao/core/util/a$a;

    sget-object v1, Lcom/qbao/core/util/a$a;->bN:Lcom/qbao/core/util/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qbao/core/util/a$a;->bO:Lcom/qbao/core/util/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qbao/core/util/a$a;->bP:Lcom/qbao/core/util/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qbao/core/util/a$a;->bQ:Lcom/qbao/core/util/a$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qbao/core/util/a$a;->bR:Lcom/qbao/core/util/a$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qbao/core/util/a$a;->bS:Lcom/qbao/core/util/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qbao/core/util/a$a;->bT:Lcom/qbao/core/util/a$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qbao/core/util/a$a;->bU:Lcom/qbao/core/util/a$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qbao/core/util/a$a;->bV:[Lcom/qbao/core/util/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qbao/core/util/a$a;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/qbao/core/util/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qbao/core/util/a$a;

    return-object v0
.end method

.method public static values()[Lcom/qbao/core/util/a$a;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/qbao/core/util/a$a;->bV:[Lcom/qbao/core/util/a$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/qbao/core/util/a$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
