.class public final enum Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/bean/SynLoginUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;",
        ">;",
        "Lcom/duoku/platform/util/DkNoProguard;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

.field public static final enum USER_LOGINTYPE_91:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

.field public static final enum USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

.field public static final enum USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

.field public static final enum USER_LOGINTYPE_VISITOR:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;


# instance fields
.field private final loginType:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    const-string v1, "USER_LOGINTYPE_VISITOR"

    invoke-direct {v0, v1, v2, v2}, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_VISITOR:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    const-string v1, "USER_LOGINTYPE_DUOKU"

    invoke-direct {v0, v1, v3, v3}, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    const-string v1, "USER_LOGINTYPE_91"

    invoke-direct {v0, v1, v4, v4}, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_91:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    new-instance v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    const-string v1, "USER_LOGINTYPE_BAIDU"

    invoke-direct {v0, v1, v5, v5}, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_VISITOR:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_DUOKU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_91:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->USER_LOGINTYPE_BAIDU:Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->ENUM$VALUES:[Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->loginType:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    return-object v0
.end method

.method public static values()[Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->ENUM$VALUES:[Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    array-length v1, v0

    new-array v2, v1, [Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/duoku/platform/bean/SynLoginUserInfo$LoginType;->loginType:I

    return v0
.end method
