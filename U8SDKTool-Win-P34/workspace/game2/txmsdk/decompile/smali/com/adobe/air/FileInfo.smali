.class Lcom/adobe/air/FileInfo;
.super Ljava/lang/Object;
.source "ApplicationFileManager.java"


# instance fields
.field public mFileSize:J

.field public mIsDirectory:Z

.field public mIsFile:Z


# direct methods
.method constructor <init>(JZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/adobe/air/FileInfo;->mFileSize:J

    iput-boolean p3, p0, Lcom/adobe/air/FileInfo;->mIsFile:Z

    iput-boolean p4, p0, Lcom/adobe/air/FileInfo;->mIsDirectory:Z

    return-void
.end method
