.class public Lcom/facebook/katana/util/UriTemplateMap$UriMatch;
.super Ljava/lang/Object;
.source "UriTemplateMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field

.field public final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/facebook/katana/util/UriTemplateMap$UriMatch;->a:Ljava/lang/Object;

    .line 100
    iput-object p2, p0, Lcom/facebook/katana/util/UriTemplateMap$UriMatch;->b:Landroid/os/Bundle;

    .line 101
    return-void
.end method
