.class public final enum Lcom/qbao/core/d/d$a;
.super Ljava/lang/Enum;
.source "UIConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qbao/core/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qbao/core/d/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aO:Lcom/qbao/core/d/d$a;

.field public static final enum aP:Lcom/qbao/core/d/d$a;

.field public static final enum aQ:Lcom/qbao/core/d/d$a;

.field public static final enum aR:Lcom/qbao/core/d/d$a;

.field public static final enum aS:Lcom/qbao/core/d/d$a;

.field private static final synthetic aT:[Lcom/qbao/core/d/d$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/qbao/core/d/d$a;

    const-string v1, "ALIGN_LEFT"

    invoke-direct {v0, v1, v2}, Lcom/qbao/core/d/d$a;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v0, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    .line 81
    new-instance v0, Lcom/qbao/core/d/d$a;

    const-string v1, "ALIGN_RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/qbao/core/d/d$a;-><init>(Ljava/lang/String;I)V

    .line 82
    sput-object v0, Lcom/qbao/core/d/d$a;->aP:Lcom/qbao/core/d/d$a;

    .line 84
    new-instance v0, Lcom/qbao/core/d/d$a;

    const-string v1, "ALIGN_CENTER"

    invoke-direct {v0, v1, v4}, Lcom/qbao/core/d/d$a;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v0, Lcom/qbao/core/d/d$a;->aQ:Lcom/qbao/core/d/d$a;

    .line 87
    new-instance v0, Lcom/qbao/core/d/d$a;

    const-string v1, "ALIGN_ENDS_BOTH"

    invoke-direct {v0, v1, v5}, Lcom/qbao/core/d/d$a;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v0, Lcom/qbao/core/d/d$a;->aR:Lcom/qbao/core/d/d$a;

    .line 90
    new-instance v0, Lcom/qbao/core/d/d$a;

    const-string v1, "ALIGN_SPREAD"

    invoke-direct {v0, v1, v6}, Lcom/qbao/core/d/d$a;-><init>(Ljava/lang/String;I)V

    .line 91
    sput-object v0, Lcom/qbao/core/d/d$a;->aS:Lcom/qbao/core/d/d$a;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qbao/core/d/d$a;

    sget-object v1, Lcom/qbao/core/d/d$a;->aO:Lcom/qbao/core/d/d$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qbao/core/d/d$a;->aP:Lcom/qbao/core/d/d$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qbao/core/d/d$a;->aQ:Lcom/qbao/core/d/d$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qbao/core/d/d$a;->aR:Lcom/qbao/core/d/d$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qbao/core/d/d$a;->aS:Lcom/qbao/core/d/d$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qbao/core/d/d$a;->aT:[Lcom/qbao/core/d/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qbao/core/d/d$a;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/qbao/core/d/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qbao/core/d/d$a;

    return-object v0
.end method

.method public static values()[Lcom/qbao/core/d/d$a;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/qbao/core/d/d$a;->aT:[Lcom/qbao/core/d/d$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/qbao/core/d/d$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
