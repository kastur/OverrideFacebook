.class public Ldifflib/Patch;
.super Ljava/lang/Object;
.source "Patch.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldifflib/Delta;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Ldifflib/Patch;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ldifflib/Delta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Ldifflib/Patch;->a:Ljava/util/List;

    sget-object v1, Ldifflib/DeltaComparator;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 75
    iget-object v0, p0, Ldifflib/Patch;->a:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ldifflib/Delta;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Ldifflib/Patch;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method
