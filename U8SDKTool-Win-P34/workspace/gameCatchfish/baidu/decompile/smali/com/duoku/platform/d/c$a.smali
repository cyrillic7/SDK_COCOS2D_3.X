.class public Lcom/duoku/platform/d/c$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/d/c;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/d/c;Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 208
    iput-object p1, p0, Lcom/duoku/platform/d/c$a;->a:Lcom/duoku/platform/d/c;

    .line 209
    const-string v0, "dk_user.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 210
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    .line 214
    const-string v0, "create table dk_user(_id INTEGER PRIMARY KEY,bduserid TEXT,username TEXT,sessionid TEXT,phonenumber TEXT,kubi TEXT,registtype INTEGER,logouttime DOUBLE,userstate INTEGER,logintype INTEGER,loginmarktime DOUBLE,dkuserid TEXT,bduss TEXT,bdptoken TEXT,baidu91userid TEXT,baidu91token TEXT,sessionid91 TEXT,ramseckey91 TEXT,d1 TEXT,d2 TEXT,d3 TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    .prologue
    .line 219
    if-le p3, p2, :cond_7

    .line 221
    iget-object v0, p0, Lcom/duoku/platform/d/c$a;->a:Lcom/duoku/platform/d/c;

    invoke-static {v0, p1, p2, p3}, Lcom/duoku/platform/d/c;->a(Lcom/duoku/platform/d/c;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 223
    :cond_7
    return-void
.end method
