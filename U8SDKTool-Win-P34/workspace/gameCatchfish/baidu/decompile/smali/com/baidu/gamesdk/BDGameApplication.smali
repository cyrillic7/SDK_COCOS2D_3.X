.class public Lcom/baidu/gamesdk/BDGameApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/e;->a(Landroid/app/Application;)V

    .line 26
    return-void
.end method
