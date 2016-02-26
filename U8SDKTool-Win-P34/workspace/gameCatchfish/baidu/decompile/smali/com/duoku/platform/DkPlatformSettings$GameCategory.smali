.class public final enum Lcom/duoku/platform/DkPlatformSettings$GameCategory;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/DkPlatformSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GameCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/DkPlatformSettings$GameCategory;",
        ">;",
        "Lcom/duoku/platform/util/DkNoProguard;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/DkPlatformSettings$GameCategory;

.field public static final enum ONLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

.field public static final enum WEAKLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    const-string v1, "ONLINE_Game"

    invoke-direct {v0, v1, v2, v2}, Lcom/duoku/platform/DkPlatformSettings$GameCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->ONLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    new-instance v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    const-string v1, "WEAKLINE_Game"

    invoke-direct {v0, v1, v3, v3}, Lcom/duoku/platform/DkPlatformSettings$GameCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->WEAKLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    sget-object v1, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->ONLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->WEAKLINE_Game:Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    aput-object v1, v0, v3

    sput-object v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->ENUM$VALUES:[Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->value:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/DkPlatformSettings$GameCategory;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/DkPlatformSettings$GameCategory;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->ENUM$VALUES:[Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/DkPlatformSettings$GameCategory;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/duoku/platform/DkPlatformSettings$GameCategory;->value:I

    return v0
.end method
