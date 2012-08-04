.class public Lcom/facebook/katana/features/Gatekeeper$Settings;
.super Ljava/lang/Object;
.source "Gatekeeper.java"


# instance fields
.field public final a:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

.field public final b:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/facebook/katana/features/Gatekeeper$Settings;->a:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    .line 63
    iput-object p2, p0, Lcom/facebook/katana/features/Gatekeeper$Settings;->b:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    .line 64
    return-void
.end method
