defmodule WoffC.BundlexProject do
  use Bundlex.Project

  def project() do
    [
      natives: natives(Bundlex.platform)
    ]
  end

  defp natives(_) do
    [
      my_native: [
        sources: ["sfnt2woff.c", "woff.c", "zopfli/deflate.c", "zopfli/blocksplitter.c", "zopfli/tree.c", "zopfli/cache.c", "zopfli/lz77.c", "zopfli/squeeze.c", "zopfli/util.c", "zopfli/hash.c", "zopfli/zopfli_lib.c", "zopfli/gzip_container.c", "zopfli/katajainen.c", "zopfli/zlib_container.c"],
        lib_dirs: [
          Path.expand("./c_src/woff_c/zopfli"),
        ],
        linker_flags: ["-lz"],
        includes: ["woff.h", "woff-private.h"],
        interface: :port
      ]
    ]
  end
end
