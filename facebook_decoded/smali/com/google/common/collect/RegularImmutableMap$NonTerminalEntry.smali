.class final Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;
.super Lcom/google/common/collect/ImmutableEntry;
.source "RegularImmutableMap.java"

# interfaces
.implements Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableEntry",
        "<TK;TV;>;",
        "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private a:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->a:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    .line 118
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RegularImmutableMap$LinkedEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$NonTerminalEntry;->a:Lcom/google/common/collect/RegularImmutableMap$LinkedEntry;

    return-object v0
.end method
