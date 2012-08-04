.class public Lcom/facebook/orca/common/diagnostics/LogFile;
.super Ljava/lang/Object;
.source "LogFile.java"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/facebook/orca/common/diagnostics/LogFile;->a:Ljava/io/File;

    .line 25
    iput-object p2, p0, Lcom/facebook/orca/common/diagnostics/LogFile;->b:Ljava/util/Date;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/LogFile;->a:Ljava/io/File;

    return-object v0
.end method

.method public final b()Ljava/util/Date;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/common/diagnostics/LogFile;->b:Ljava/util/Date;

    return-object v0
.end method
