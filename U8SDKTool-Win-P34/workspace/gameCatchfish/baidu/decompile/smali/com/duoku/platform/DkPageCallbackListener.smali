.class public Lcom/duoku/platform/DkPageCallbackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/util/DkNoProguard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/DkPageCallbackListener$AdPageListener;
    }
.end annotation


# static fields
.field private static adDialogView:Lcom/duoku/platform/view/c;

.field private static isShowing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/DkPageCallbackListener;->isShowing:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/duoku/platform/DkPageCallbackListener;->isShowing:Z

    return v0
.end method

.method static synthetic access$1()Lcom/duoku/platform/view/c;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;

    return-object v0
.end method

.method static synthetic access$2(Lcom/duoku/platform/view/c;)V
    .registers 1

    .prologue
    .line 21
    sput-object p0, Lcom/duoku/platform/DkPageCallbackListener;->adDialogView:Lcom/duoku/platform/view/c;

    return-void
.end method

.method static synthetic access$3(Z)V
    .registers 1

    .prologue
    .line 20
    sput-boolean p0, Lcom/duoku/platform/DkPageCallbackListener;->isShowing:Z

    return-void
.end method
