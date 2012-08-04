.class public Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;
.super Ljava/lang/Object;
.source "ManagedDataStore.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final b:J


# direct methods
.method constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;J)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;->a:Ljava/lang/Object;

    .line 120
    iput-wide p2, p0, Lcom/facebook/katana/binding/ManagedDataStore$InternalStore;->b:J

    .line 121
    return-void
.end method
