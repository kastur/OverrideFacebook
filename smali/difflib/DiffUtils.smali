.class public Ldifflib/DiffUtils;
.super Ljava/lang/Object;
.source "DiffUtils.java"


# static fields
.field private static a:Ldifflib/DiffAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ldifflib/myers/MyersDiff;

    invoke-direct {v0}, Ldifflib/myers/MyersDiff;-><init>()V

    sput-object v0, Ldifflib/DiffUtils;->a:Ldifflib/DiffAlgorithm;

    .line 33
    const-string v0, "^@@\\s+-(?:(\\d+)(?:,(\\d+))?)\\s+\\+(?:(\\d+)(?:,(\\d+))?)\\s+@@$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ldifflib/Patch;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;)",
            "Ldifflib/Patch;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Ldifflib/DiffUtils;->a:Ldifflib/DiffAlgorithm;

    invoke-static {p0, p1, v0}, Ldifflib/DiffUtils;->a(Ljava/util/List;Ljava/util/List;Ldifflib/DiffAlgorithm;)Ldifflib/Patch;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Ldifflib/DiffAlgorithm;)Ldifflib/Patch;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/util/List",
            "<*>;",
            "Ldifflib/DiffAlgorithm;",
            ")",
            "Ldifflib/Patch;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-interface {p2, p0, p1}, Ldifflib/DiffAlgorithm;->a(Ljava/util/List;Ljava/util/List;)Ldifflib/Patch;

    move-result-object v0

    return-object v0
.end method
