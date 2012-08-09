.class Lcom/facebook/katana/ComposerActivity$15;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Lcom/facebook/katana/util/FBLocationManager$FBLocationListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$15;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 1
    .parameter

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$15;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0, p1}, Lcom/facebook/katana/ComposerActivity;->a(Lcom/facebook/katana/ComposerActivity;Landroid/location/Location;)V

    .line 1023
    return-void
.end method

.method public final e_()V
    .locals 0

    .prologue
    .line 1028
    return-void
.end method
