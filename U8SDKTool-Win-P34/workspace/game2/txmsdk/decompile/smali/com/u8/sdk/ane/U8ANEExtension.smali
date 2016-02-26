.class public Lcom/u8/sdk/ane/U8ANEExtension;
.super Ljava/lang/Object;
.source "U8ANEExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;
    }
.end annotation


# static fields
.field public static final CALLBACK_INIT:Ljava/lang/String; = "OnInitSuc"

.field public static final CALLBACK_LOGIN:Ljava/lang/String; = "OnLoginSuc"

.field public static final CALLBACK_LOGOUT:Ljava/lang/String; = "OnLogout"

.field public static final FUC_ACCOUNT_CENTER:Ljava/lang/String; = "u8_showAccountCenter"

.field public static final FUC_EXIT:Ljava/lang/String; = "u8_exit"

.field public static final FUC_INIT:Ljava/lang/String; = "u8_init"

.field public static final FUC_LOGIN:Ljava/lang/String; = "u8_login"

.field public static final FUC_LOGOUT:Ljava/lang/String; = "u8_logout"

.field public static final FUC_PAY:Ljava/lang/String; = "u8_pay"

.field public static final FUC_SUBMIT:Ljava/lang/String; = "u8_submitExtraData"

.field public static final FUC_SUPPORT_ACCOUNT_CENTER:Ljava/lang/String; = "u8_isSupportAccoutCenter"

.field public static final FUC_SUPPORT_EXIT:Ljava/lang/String; = "u8_isSupportExit"

.field public static final FUC_SUPPORT_LOGOUT:Ljava/lang/String; = "u8_isSupportLogout"

.field public static final FUC_SWITCH:Ljava/lang/String; = "u8_switchLogin"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ane/U8ANEExtension;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/u8/sdk/ane/U8ANEExtension;->tip(Ljava/lang/String;)V

    return-void
.end method

.method private tip(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ane/U8ANEExtension$1;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/ane/U8ANEExtension$1;-><init>(Lcom/u8/sdk/ane/U8ANEExtension;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2

    new-instance v0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    invoke-direct {v0, p0}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;-><init>(Lcom/u8/sdk/ane/U8ANEExtension;)V

    invoke-virtual {v0}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->initSDKListener()V

    new-instance v1, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    invoke-direct {v1, p0}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;-><init>(Lcom/u8/sdk/ane/U8ANEExtension;)V

    return-object v1
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
